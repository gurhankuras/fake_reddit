part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    required int unreadMessageCount,
    required int inboxUnreadMessageCount,
    required int unreadActivitiesCount,
  }) = _NotificationState;

  factory NotificationState.initial() => NotificationState(
        inboxUnreadMessageCount: 0,
        unreadActivitiesCount: 0,
        unreadMessageCount: 0,
      );
}


/*
  NOTIFICATIONS

  _id: '...'
  userId: '...'
  types: {
    'chat': 1
    'inbox': 1
  },
  {
    '...': {}
  }



*/