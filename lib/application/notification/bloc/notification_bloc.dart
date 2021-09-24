import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/model/user.dart';
import '../../../domain/core/constants/socket_event_keys.dart';
import '../../../domain/i_socket_manager.dart';
import '../../../domain/notification/notification_info.dart';
import '../../../utility/app_logger.dart';
import '../../../utility/log_init.dart';
import '../../auth/auth_bloc.dart';

part 'notification_bloc.freezed.dart';
part 'notification_event.dart';
part 'notification_state.dart';

// @Singleton()
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final ISocketManager socketManager;
  final AuthBloc authBloc;
  late StreamSubscription sub;
  NotificationBloc({
    required this.socketManager,
    required this.authBloc,
  }) : super(NotificationState.initial()) {
    logInit(NotificationBloc);
    sub = authBloc.stream.listen(_authListener);
    _registerEventHandlers();
    _registerSocketListeners();
  }

  void _authListener(AuthState event) {
    print('LISTEN');
    if (event is Authenticated) {
      add(NotificationEvent.badgesChanged(event.user.notifications));
    } else if (event is Unauthenticated) {
      add(NotificationEvent.badgesChanged(BadgeIndicators.empty()));
    }
  }

  void _registerEventHandlers() {
    on<BadgesChanged>(_onBadgesChanged);
    on<ActivityRead>(_onActivityRead);
    on<InboxMessageRead>(_onInboxMessageRead);
    on<MessageRead>(_onMessageRead);
  }

  void _registerSocketListeners() {
    socketManager.on(SocketEventKeys.notification, _notificationSocketListener);
  }

  dynamic _notificationSocketListener(dynamic data) =>
      NotificationInfo.fromJson(data);

  FutureOr<void> _onBadgesChanged(
    BadgesChanged event,
    Emitter<NotificationState> emit,
  ) {
    // final res = await Dio().get('http://10.0.2.2:4000/api/notifications');
    // final info = NotificationInfo.fromJson(res.data);

    // await Future.delayed(Duration(seconds: 3));
    // print(info);
    log.e('GIRDI');
    final badges = event.notifications;
    emit(
      state.copyWith(
        unreadMessageCount: badges.chatMessages,
        inboxUnreadMessageCount: badges.inboxMessages,
        unreadActivitiesCount: badges.inboxActivities,
      ),
    );
  }

  FutureOr<void> _onActivityRead(
    ActivityRead event,
    Emitter<NotificationState> emit,
  ) {
    // TODO: network
    emit(
      state.copyWith(
        unreadActivitiesCount: state.unreadActivitiesCount - 1,
      ),
    );
  }

  FutureOr<void> _onInboxMessageRead(
    InboxMessageRead event,
    Emitter<NotificationState> emit,
  ) {
    // TODO: network
    emit(
      state.copyWith(
        inboxUnreadMessageCount: state.inboxUnreadMessageCount - 1,
      ),
    );
  }

  FutureOr<void> _onMessageRead(
    MessageRead event,
    Emitter<NotificationState> emit,
  ) {
    // TODO: network
    emit(
      state.copyWith(
        unreadMessageCount: state.unreadMessageCount - 1,
      ),
    );
  }

  @override
  Future<void> close() {
    sub.cancel();
    return super.close();
  }
}
