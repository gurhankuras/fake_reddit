import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failure.dart';
import 'chat_messages_repository.dart';
import 'chat_messages_response.dart';
import 'chat_room.dart';

@LazySingleton(as: IChatMessagesService)
class ChatMessagesService implements IChatMessagesService {
  final IChatMessagesRepository chatMessagesRepository;
  ChatMessagesService({
    required this.chatMessagesRepository,
  });

  @override
  Future<Either<Failure, ChatMessagesResponse>> find({
    int limit = 10,
    int page = 1,
    String? fetchedAt,
  }) {
    return chatMessagesRepository.find(
      limit: limit,
      page: page,
      fetchedAt: fetchedAt,
    );
  }

  @override
  Future<Either<Failure, List<ChatRoom>>> fetchChatRooms() {
    return chatMessagesRepository.fetchChatRooms();
  }
}

abstract class IChatMessagesService {
  Future<Either<Failure, ChatMessagesResponse>> find({
    int limit = 10,
    int page = 1,
    String? fetchedAt,
  });

  Future<Either<Failure, List<ChatRoom>>> fetchChatRooms();
}
