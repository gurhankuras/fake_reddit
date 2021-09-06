part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  // const factory NotificationEvent.notificationReceived(RemoteMessage message, String notificatioType) =
  //     _NotificationReceived;

  const factory NotificationEvent.notificationInfoFetchingStarted() =
      _NotificationInfoFetchingStarted;

  const factory NotificationEvent.messageRead(String id) = _MessageRead;
  const factory NotificationEvent.newMessageReceived(NotificationInfo info) =
      _NewMessageReceived;
}
