part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  // const factory NotificationEvent.notificationReceived(RemoteMessage message, String notificatioType) =
  //     _NotificationReceived;

  const factory NotificationEvent.badgesChanged(BadgeIndicators notifications) =
      BadgesChanged;

  const factory NotificationEvent.messageRead(String id) = MessageRead;
  const factory NotificationEvent.activityRead(String id) = ActivityRead;
  const factory NotificationEvent.inboxMessageRead(String id) =
      InboxMessageRead;

  // const factory NotificationEvent.newMessageReceived(NotificationInfo info) =
  //     _NewMessageReceived;
  // const factory NotificationEvent.newInboxMessageReceived(
  //     NotificationInfo info) = _NewInboxMessageReceived;
  // const factory NotificationEvent.newActivityReceived(NotificationInfo info) =
  //     _NewActivityReceived;
}
