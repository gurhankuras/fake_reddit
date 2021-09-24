part of 'inbox_activities_bloc.dart';

@freezed
class InboxActivitiesEvent with _$InboxActivitiesEvent {
  const factory InboxActivitiesEvent.fetchingStarted() = FetchingStarted;
  const factory InboxActivitiesEvent.activityViewed(String id) = ActivityViewed;
// const factory InboxActivitiesEvent.() =_
}
