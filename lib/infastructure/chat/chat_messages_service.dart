import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:reddit_clone/domain/core/failure.dart';
import 'package:reddit_clone/infastructure/chat/chat_message_dto.dart';
import 'package:reddit_clone/infastructure/chat/chat_messages_repository.dart';
import 'package:reddit_clone/infastructure/chat/chat_room.dart';

import '../../domain/core/server_failures.dart';

@LazySingleton(as: IChatMessagesService)
class ChatMessagesService implements IChatMessagesService {
  final IChatMessagesRepository chatMessagesRepository;
  ChatMessagesService({
    required this.chatMessagesRepository,
  });

  @override
  Future<Either<ServerFailure, List<ChatMessageDTO>>> find({
    int limit = 10,
    int page = 1,
  }) {
    return chatMessagesRepository.find(limit: limit, page: page);
  }

  @override
  Future<Either<Failure, List<ChatRoom>>> fetchChatRooms() {
    return chatMessagesRepository.fetchChatRooms();
  }
}

abstract class IChatMessagesService {
  Future<Either<ServerFailure, List<ChatMessageDTO>>> find({
    int limit = 10,
    int page = 1,
  });

  Future<Either<Failure, List<ChatRoom>>> fetchChatRooms();
}
