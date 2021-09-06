import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:reddit_clone/infastructure/chat/chat_message_dto.dart';

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
}

@LazySingleton(as: IChatMessagesRepository)
class ChatMessagesRepository implements IChatMessagesRepository {
  final Dio dio;
  final INetworkConnectivity network;

  ChatMessagesRepository({
    required this.dio,
    required this.network,
  });

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
}
