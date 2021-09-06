import 'package:dartz/dartz.dart';
import 'package:reddit_clone/infastructure/chat/chat_message_dto.dart';
import 'package:reddit_clone/infastructure/chat/chat_messages_repository.dart';

import '../../domain/core/server_failures.dart';
import '../../domain/feed/i_feed_repository.dart';
import '../../domain/feed/i_feed_service.dart';
import '../../domain/post/post_entry.dart';
import 'package:injectable/injectable.dart';

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
}

abstract class IChatMessagesService {
  Future<Either<ServerFailure, List<ChatMessageDTO>>> find({
    int limit = 10,
    int page = 1,
  });
}
