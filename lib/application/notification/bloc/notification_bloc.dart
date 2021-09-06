import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_clone/domain/core/constants/socket_event_keys.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:socket_io_client/socket_io_client.dart';

import 'package:reddit_clone/domain/i_socket_manager.dart';

import '../../../domain/notification/notification_info.dart';

part 'notification_bloc.freezed.dart';
part 'notification_event.dart';
part 'notification_state.dart';

@Singleton()
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final ISocketManager socketManager;
  NotificationBloc({
    required this.socketManager,
  }) : super(NotificationState.initial()) {
    print('NotificiationBloc created');
    _prepateSocket();
  }

  void _prepateSocket() {
    socketManager.on(SocketEventKeys.notification,
        (data) => NotificationInfo.fromJson(data));
  }

  @override
  Stream<NotificationState> mapEventToState(
    NotificationEvent event,
  ) async* {
    yield* event.map(
      notificationInfoFetchingStarted: (e) async* {
        await Future.delayed(Duration(seconds: 10));
        yield state.copyWith(
          info: some(
            NotificationInfo(
              unreadMessagesCount: 4,
              // chatRoomIds: {'123456789': 3, '1234567890': 1},
            ),
          ),
        );
      },
      messageRead: (e) async* {
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
      newMessageReceived: (e) async* {
        yield state.copyWith(info: some(e.info));
        // yield state.copyWith(
        //   info: state.info.fold(
        //     () => state.info,
        //     (a) {
        //       final newIds =
        //           a.chatRoomIds.map((key, value) => MapEntry(key, value));
        //       newIds.update(e.id, (value) => value + 1, ifAbsent: () => 1);
        //       return some(a.copyWith(
        //           unreadMessagesCount: a.unreadMessagesCount + 1,
        //           chatRoomIds: newIds));
        //     },
        //   ),
        // );
      },
    );
  }
}
