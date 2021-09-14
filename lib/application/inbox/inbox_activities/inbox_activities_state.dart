part of 'inbox_activities_bloc.dart';

@freezed
class InboxActivitiesState with _$InboxActivitiesState {
  const factory InboxActivitiesState({
    required List<Activity> activities,
    required bool loading,
    required bool failed,
  }) = _InboxActivitiesState;

  factory InboxActivitiesState.initial() => InboxActivitiesState(
        activities: [],
        loading: false,
        failed: false,
      );
}
