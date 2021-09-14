import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'inbox_activities_event.dart';
part 'inbox_activities_state.dart';

class InboxActivitiesBloc extends Bloc<InboxActivitiesEvent, InboxActivitiesState> {
  InboxActivitiesBloc() : super(InboxActivitiesInitial());

  @override
  Stream<InboxActivitiesState> mapEventToState(
    InboxActivitiesEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
