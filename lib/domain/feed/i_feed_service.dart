import 'package:dartz/dartz.dart';
import 'package:reddit_clone/domain/core/server_failures.dart';
import 'package:reddit_clone/domain/core/value_failure.dart';

import '../post_entry.dart';

abstract class IFeedService {
  Future<Either<ServerFailure, List<PostEntry>>> getNewsFeed({
    int limit = 10,
    int page = 1,
  });
}
