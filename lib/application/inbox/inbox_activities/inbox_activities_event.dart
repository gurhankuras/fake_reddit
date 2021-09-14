part of 'inbox_activities_bloc.dart';

@freezed
class InboxActivitiesEvent with _$InboxActivitiesEvent {
  const factory InboxActivitiesEvent.fetchingStarted() = _FetchingStarted;
  const factory InboxActivitiesEvent.activityViewed(String id) =
      _activityViewed;
// const factory InboxActivitiesEvent.() =_
}
