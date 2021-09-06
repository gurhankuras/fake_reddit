part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({required Option<NotificationInfo> info}) =
      _NotificationState;

  factory NotificationState.initial() => NotificationState(info: none());
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