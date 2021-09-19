import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/chat/i_chat_cache.dart';
import '../../domain/core/failure.dart';
import '../../domain/core/response_error.dart';
import '../../domain/i_network_connectivity.dart';
import 'chat_messages_response.dart';
import 'chat_remote_source.dart';
import 'chat_room.dart';

// const kImpossibleHttpCode = 600;

abstract class IChatMessagesRepository {
  Future<Either<Failure, ChatMessagesResponse>> find({
    int limit = 10,
    int page = 1,
    String? fetchedAt,
  });
  Future<Either<Failure, List<ChatRoom>>> fetchChatRooms();
}

// TODO move remote logic to its own class (RemoteSource)
@LazySingleton(as: IChatMessagesRepository)
class ChatMessagesRepository implements IChatMessagesRepository {
  final IChatRemoteSource remote;
  final IChatCache cache;
  final INetworkConnectivity network;

  ChatMessagesRepository({
    required this.remote,
    required this.cache,
    required this.network,
  });

  Future<T> _dataSource<T>(
      {required Future<T> Function() cache,
      required Future<T> Function() remote}) async {
    final hasConnection = await network.hasConnection();
    if (hasConnection) {
      return remote();
    }
    return cache();
  }

  // Future<Either<Failure, ChatMessagesResponse>> _dataSource({required Function() cache})

  @override
  Future<Either<Failure, ChatMessagesResponse>> find(
      {int limit = 10, int page = 1, String? fetchedAt}) async {
    return await _dataSource<Either<Failure, ChatMessagesResponse>>(
      remote: () => _fetchMessagesFromRemoteSource(limit, page, fetchedAt),
      cache: () => _fetchMessagesFromCache(limit, page),
    );
  }

  // Future<Either<Failure, ChatMessagesResponse>> _fetchMessagesFromRemoteSource(
  //     int limit, int page, String? fetchedAt) async {
  //   try {
  //     const url =
  //         'http://10.0.2.2:4000/api/chat/rooms/612cc72f65a882665306cc0e';
  //     final queries =
  //         _makeQueries(limit: limit, page: page, fetchedAt: fetchedAt);
  //     final response = await dio.get(url, queryParameters: queries);
  //     final data = response.data;
  //     if (data is Map) {
  //       final responseData =
  //           ChatMessagesResponse.fromJson(data as Map<String, dynamic>);
  //       cache.saveAll(responseData.messages);
  //       return right(responseData);
  //     }
  //     return left(Failure.unexpected('Unexpected error occured!'));
  //   } catch (e) {
  //     final failure =
  //         makeRemoteFailure(e, chatMessagesRemoteFetchingErrorHandler);
  //     return left(failure);
  //   }
  // }

  // Map<String, dynamic> _makeQueries(
  //     {required int limit, required int page, String? fetchedAt}) {
  //   final Map<String, dynamic> queries = {'page': page, 'limit': limit};

  //   if (fetchedAt != null) {
  //     queries['fetchedAt'] = fetchedAt;
  //   }
  //   return queries;
  // }

  Future<Either<Failure, ChatMessagesResponse>> _fetchMessagesFromCache(
    int limit,
    int page,
  ) async {
    final cachedMessages = await cache.getMessagesPaginated(limit, page);
    return right(
      ChatMessagesResponse(
        messages: cachedMessages,
        fetchedAt: DateTime.now().toIso8601String(),
      ),
    );
  }

  @override
  Future<Either<Failure, List<ChatRoom>>> fetchChatRooms() {
    return remote.fetchChatRooms();
  }
  // @override
  // Future<Either<Failure, List<ChatRoom>>> fetchChatRooms() async {
  //   const url = 'http://10.0.2.2:4000/api/chat';
  //   try {
  //     final response = await dio.get(url);
  //     final data = response.data;
  //     print(data);
  //     if (data is List) {
  //       print(data);

  //       return right(data
  //           .map((chatRoomJson) => ChatRoom.fromJson(chatRoomJson))
  //           .toList());
  //       // return right([]);
  //     }
  //     print(response.data);
  //     return left(BadResponseData('Corrupt data'));
  //   } catch (e) {
  //     print(e);
  //     print('deneme');
  //     return left(Failure('fetchChatRooms failure'));
  //   }
  // }

  Future<Either<Failure, ChatMessagesResponse>> _fetchMessagesFromRemoteSource(
    int limit,
    int page,
    String? fetchedAt,
  ) async {
    final responseOr = await remote.fetchMessages(limit, page, fetchedAt);
    responseOr.fold(
      (failure) => null,
      (response) => cache.saveMessages(response.messages),
    );
    return responseOr;
  }
}

Failure chatMessagesRemoteFetchingErrorHandler(
    int status, ResponseError error) {
  switch (status) {
    case HttpStatus.unprocessableEntity:
      return ValidationFailure('Oops! something broke. $error');
    default:
      return Failure.unexpected('Couldn\'t predicted this. what happened?');
  }
}
