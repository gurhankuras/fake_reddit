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
    registerEventHandlers();
  }

  void registerEventHandlers() {
    on<FetchingStarted>(_onFetchingStarted);
    on<ActivityViewed>(_onActivityViewed);
  }

  FutureOr<void> _onFetchingStarted(
    FetchingStarted event,
    Emitter<InboxActivitiesState> emit,
  ) async {
    emit(state.copyWith(loading: true));
    final activitiesOr = await repository.getActivities();

    activitiesOr.fold(
      (f) => emit(state.copyWith(loading: false, failed: true)),
      (activities) => emit(
        state.copyWith(
          activities: activities,
          loading: false,
          failed: false,
        ),
      ),
    );
  }

  FutureOr<void> _onActivityViewed(
    ActivityViewed event,
    Emitter<InboxActivitiesState> emit,
  ) async {
    final id = event.id;
    final successOr = await repository.deleteActivity(id);

    successOr.fold(
      (failure) => emit(state),
      (_) {
        final updatedActivities =
            state.activities.where((activity) => activity.id != id).toList();
        emit(state.copyWith(activities: updatedActivities));
      },
    );
  }
}
