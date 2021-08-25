import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:reddit_clone/domain/core/server_failures.dart';
import 'package:reddit_clone/domain/core/value_failure.dart';
import 'package:reddit_clone/domain/feed/i_feed_repository.dart';
import 'package:reddit_clone/domain/post_entry.dart';
import 'package:reddit_clone/domain/i_network_connectivity.dart';
import 'package:reddit_clone/infastructure/core/network_connectivity.dart';

const kImpossibleHttpCode = 600;

class FeedRepository implements IFeedRepository {
  final Dio dio;
  final INetworkConnectivity network;

  FeedRepository({
    required this.dio,
    required this.network,
  });

  @override
  Future<Either<ServerFailure, List<PostEntry>>> getNewsFeed({
    int limit = 10,
    int page = 1,
  }) async {
    if (await network.hasConnection()) {
      try {
        const url = 'http://localhost:4000/api/news';
        final queries = {'page': page, 'limit': limit};

        final response = await dio.get(url, queryParameters: queries);

        if (response.statusCode != HttpStatus.ok) {
          return left(ServerFailure.badStatus(
              response.statusCode ?? kImpossibleHttpCode));
        }
        if (response.data is List) {
          return right(response.data);
        }
        return left(ServerFailure.unexpectedResponseType());
      } catch (e) {
        return left(ServerFailure.unexpected());
      }
    } else {
      return left(ServerFailure.hasNoConnection());
    }
  }
}
