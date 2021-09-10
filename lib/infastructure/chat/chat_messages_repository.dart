import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:reddit_clone/domain/core/failure.dart';
import 'package:reddit_clone/infastructure/chat/chat_message_dto.dart';
import 'package:reddit_clone/infastructure/chat/chat_messages_service.dart';
import 'package:reddit_clone/infastructure/chat/chat_room.dart';
import 'package:reddit_clone/infastructure/core/token_dio_interceptor.dart';
import 'package:reddit_clone/injection.dart';

import '../../domain/core/server_failures.dart';
import '../../domain/feed/i_feed_repository.dart';
import '../../domain/i_network_connectivity.dart';
import '../../domain/post/post_entry.dart';
import 'package:injectable/injectable.dart';

const kImpossibleHttpCode = 600;

abstract class IChatMessagesRepository {
  Future<Either<ServerFailure, List<ChatMessageDTO>>> find({
    int limit = 10,
    int page = 1,
  });
  Future<Either<Failure, List<ChatRoom>>> fetchChatRooms();
}

@LazySingleton(as: IChatMessagesRepository)
class ChatMessagesRepository implements IChatMessagesRepository {
  final Dio dio;
  final INetworkConnectivity network;

  ChatMessagesRepository({
    required this.dio,
    required this.network,
  }) {
    dio.interceptors.add(getIt<TokenDioInterceptor>());
  }

  @override
  Future<Either<ServerFailure, List<ChatMessageDTO>>> find({
    int limit = 10,
    int page = 1,
  }) async {
    if (await network.hasConnection()) {
      try {
        const url =
            'http://10.0.2.2:4000/api/chat/rooms/612cc72f65a882665306cc0e';
        final queries = {'page': page, 'limit': limit};

        final response = await dio.get(url, queryParameters: queries);

        if (response.statusCode != HttpStatus.ok) {
          return left(ServerFailure.badStatus(
              response.statusCode ?? kImpossibleHttpCode));
        }
        final data = response.data;
        if (data is List) {
          return right(data.map((e) => ChatMessageDTO.fromJson(e)).toList());
        }
        return left(ServerFailure.unexpectedResponseType());
      } catch (e) {
        print(e);
        return left(ServerFailure.unexpected());
      }
    } else {
      return left(ServerFailure.hasNoConnection());
    }
  }

  @override
  Future<Either<Failure, List<ChatRoom>>> fetchChatRooms() async {
    const url = 'http://10.0.2.2:4000/api/chat';
    try {
      final response = await dio.get(url);
      final data = response.data;
      if (data is List) {
        print(data);

        return right(data
            .map((chatRoomJson) => ChatRoom.fromJson(chatRoomJson))
            .toList());
        // return right([]);
      }
      print(response.data);
      return left(BadResponseData('Corrupt data'));
    } catch (e) {
      print(e);
      print('deneme');
      return left(Failure('fetchChatRooms failure'));
    }
  }
}
