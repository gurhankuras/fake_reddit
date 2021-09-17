import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_clone/domain/auth/model/user.dart';
import 'package:reddit_clone/utility/app_logger.dart';
import 'package:reddit_clone/utility/log_init.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:socket_io_client/socket_io_client.dart';

import 'package:reddit_clone/domain/core/constants/socket_event_keys.dart';
import 'package:reddit_clone/domain/i_socket_manager.dart';
import '../../auth/auth_bloc.dart';
import '../../../domain/notification/notification_info.dart';

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
    sub = authBloc.stream.listen((event) {
      print('LISTEN');
      if (event is Authenticated) {
        add(NotificationEvent.badgesChanged(event.user.notifications));
      } else if (event is Unauthenticated) {
        add(NotificationEvent.badgesChanged(BadgeIndicators(
          chatMessages: 0,
          inboxActivities: 0,
          inboxMessages: 0,
        )));
      }
    });
    print('NotificiationBloc created');
    _prepateSocket();
  }

  // Future<void> cancel() {
  //   // super.dispose();
  //   sub.cancel();
  // }

  void _prepateSocket() {
    socketManager.on(SocketEventKeys.notification,
        (data) => NotificationInfo.fromJson(data));
  }

  @override
  Future<void> close() {
    sub.cancel();
    return super.close();
  }

  @override
  Stream<NotificationState> mapEventToState(
    NotificationEvent event,
  ) async* {
    yield* event.map(
      badgesChanged: (e) async* {
        // final res = await Dio().get('http://10.0.2.2:4000/api/notifications');
        // final info = NotificationInfo.fromJson(res.data);

        // await Future.delayed(Duration(seconds: 3));
        // print(info);
        log.e('GIRDI');
        final badges = e.notifications;
        yield state.copyWith(
          unreadMessageCount: badges.chatMessages,
          inboxUnreadMessageCount: badges.inboxMessages,
          unreadActivitiesCount: badges.inboxActivities,
        );
      },
      activityRead: (e) async* {
        yield state.copyWith(
          unreadActivitiesCount: state.unreadActivitiesCount - 1,
        );
      },
      inboxMessageRead: (e) async* {
        yield state.copyWith(
          inboxUnreadMessageCount: state.inboxUnreadMessageCount - 1,
        );
      },

      messageRead: (e) async* {
        yield state.copyWith(
          unreadMessageCount: state.unreadMessageCount - 1,
        );
        // yield* state.info.fold(
        //   () async* {
        //     yield state;
        //   },
        //   (a) async* {
        //     if (a.chatRoomIds.containsKey(e.id) && a.chatRoomIds[e.id]! != 0) {
        //       final newChatRoomIds =
        //           a.chatRoomIds.map((key, value) => MapEntry(key, value));
        //       newChatRoomIds.update(e.id, (value) => 0, ifAbsent: () => 0);

        //       yield state.copyWith(
        //         info: some(
        //           a.copyWith(
        //               unreadMessagesCount:
        //                   a.unreadMessagesCount - a.chatRoomIds[e.id]!,
        //               chatRoomIds: newChatRoomIds),
        //         ),
        //       );
        //     }
        //   },
        // );
      },
      // newMessageReceived: (e) async* {
      //   yield state.copyWith(
      //     inboxUnreadMessageCount: state.inboxUnreadMessageCount + 1,
      //   );
      //   // yield state.copyWith(
      //   //   info: state.info.fold(
      //   //     () => state.info,
      //   //     (a) {
      //   //       final newIds =
      //   //           a.chatRoomIds.map((key, value) => MapEntry(key, value));
      //   //       newIds.update(e.id, (value) => value + 1, ifAbsent: () => 1);
      //   //       return some(a.copyWith(
      //   //           unreadMessagesCount: a.unreadMessagesCount + 1,
      //   //           chatRoomIds: newIds));
      //   //     },
      //   //   ),
      //   // );
      // },
    );
  }
}
