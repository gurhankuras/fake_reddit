import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:reddit_clone/domain/core/failure.dart';
import 'package:reddit_clone/infastructure/chat/chat_messages_repository.dart';
import 'package:reddit_clone/infastructure/chat/chat_messages_response.dart';
import 'package:reddit_clone/infastructure/chat/chat_room.dart';
import 'package:reddit_clone/infastructure/core/dio_error_handler.dart';
import 'package:reddit_clone/infastructure/core/token_dio_interceptor.dart';
import 'package:reddit_clone/injection.dart';
import 'package:injectable/injectable.dart';

abstract class IChatRemoteSource {
  Future<Either<Failure, ChatMessagesResponse>> fetchMessages(
    int limit,
    int page,
    String? fetchedAt,
  );
  Future<Either<Failure, List<ChatRoom>>> fetchChatRooms();
}

@LazySingleton(as: IChatRemoteSource)
class ChatRemoteSource implements IChatRemoteSource {
  final Dio dio;

  ChatRemoteSource({required this.dio}) {
    dio.interceptors.add(getIt<TokenDioInterceptor>());
  }

  @override
  Future<Either<Failure, ChatMessagesResponse>> fetchMessages(
      int limit, int page, String? fetchedAt) async {
    try {
      const url =
          'http://10.0.2.2:4000/api/chat/rooms/612cc72f65a882665306cc0e';
      final queries =
          _makeQueries(limit: limit, page: page, fetchedAt: fetchedAt);
      final response = await dio.get(url, queryParameters: queries);
      final data = response.data;
      if (data is Map) {
        final responseData =
            ChatMessagesResponse.fromJson(data as Map<String, dynamic>);
        // cache.saveAll(responseData.messages);
        return right(responseData);
      }
      return left(Failure.unexpected('Unexpected error occured!'));
    } catch (e) {
      final failure =
          makeRemoteFailure(e, chatMessagesRemoteFetchingErrorHandler);
      return left(failure);
    }
  }

  @override
  Future<Either<Failure, List<ChatRoom>>> fetchChatRooms() async {
    const url = 'http://10.0.2.2:4000/api/chat';
    try {
      final response = await dio.get(url);
      final data = response.data;
      print(data);
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

  Map<String, dynamic> _makeQueries(
      {required int limit, required int page, String? fetchedAt}) {
    final Map<String, dynamic> queries = {'page': page, 'limit': limit};

    if (fetchedAt != null) {
      queries['fetchedAt'] = fetchedAt;
    }
    return queries;
  }
}
