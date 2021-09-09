import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/i_snackbar_service.dart';
import '../../../infastructure/chat/chat_messages_service.dart';
import '../../../infastructure/chat/chat_room.dart';
import '../../../injection.dart';

part 'chat_rooms_bloc.freezed.dart';
part 'chat_rooms_event.dart';
part 'chat_rooms_state.dart';

@injectable
class ChatRoomsBloc extends Bloc<ChatRoomsEvent, ChatRoomsState> {
  final IChatMessagesService service;
  ChatRoomsBloc({required IChatMessagesService chatService})
      : service = chatService,
        super(ChatRoomsState.initial());

  @override
  Stream<ChatRoomsState> mapEventToState(
    ChatRoomsEvent event,
  ) async* {
    yield* event.map(fetchingStarted: (e) async* {
      yield state.copyWith(loading: true);
      final chatRooms = await service.fetchChatRooms();

      yield* chatRooms.fold(
        (l) async* {
          getIt<ISnackbarService>().error(l.message);
          yield state.copyWith(loading: false);
        },
        (rooms) async* {
          yield state.copyWith(loading: false, chatRooms: rooms);
        },
      );
    });
  }
}
