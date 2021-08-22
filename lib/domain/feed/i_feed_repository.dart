import 'package:dartz/dartz.dart';
import 'package:reddit_clone/domain/core/server_failures.dart';
import 'package:reddit_clone/domain/feed_entry.dart';

abstract class IFeedRepository {
  Future<Either<ServerFailure, List<PostEntry>>> getNewsFeed({
    int limit = 10,
    int page = 1,
  });
}
