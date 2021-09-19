import 'dart:async';

import 'package:bloc/bloc.dart';
import '../../../domain/inbox/activity.dart';
import '../../../domain/inbox/i_inbox_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../utility/log_init.dart';

part 'inbox_activities_event.dart';
part 'inbox_activities_state.dart';
part 'inbox_activities_bloc.freezed.dart';

@injectable
class InboxActivitiesBloc
    extends Bloc<InboxActivitiesEvent, InboxActivitiesState> {
  final IInboxRepository repository;

  InboxActivitiesBloc(this.repository) : super(InboxActivitiesState.initial()) {
    logInit(InboxActivitiesBloc);
  }

  @override
  Stream<InboxActivitiesState> mapEventToState(
    InboxActivitiesEvent event,
  ) async* {
    yield* event.map(
      fetchingStarted: (e) async* {
        yield state.copyWith(loading: true);
        final activitiesOr = await repository.getActivities();
        // await Future.delayed(Duration(seconds: 5));
        yield* activitiesOr.fold(
          (f) async* {
            print(f);
            yield state.copyWith(loading: false, failed: true);
          },
          (activities) async* {
            yield state.copyWith(
              activities: activities,
              loading: false,
              failed: false,
            );
          },
        );
      },
      activityViewed: (e) async* {
        final id = e.id;
        final successOr = await repository.deleteActivity(id);
        // unitOr
        yield* successOr.fold(
          (failure) async* {
            print(failure);
            yield state;
          },
          (_) async* {
            final updatedActivities = state.activities
                .where((activity) => activity.id != id)
                .toList();
            yield state.copyWith(activities: updatedActivities);
          },
        );
      },
    );
  }
}
