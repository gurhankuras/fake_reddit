import 'package:dartz/dartz.dart';

import '../core/server_failures.dart';
import '../post_entry.dart';

abstract class IFeedService {
  Future<Either<ServerFailure, List<PostEntry>>> getNewsFeed({
    int limit = 10,
    int page = 1,
  });
}
