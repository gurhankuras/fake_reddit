import 'package:dartz/dartz.dart';

import '../../domain/core/server_failures.dart';
import '../../domain/feed/i_feed_repository.dart';
import '../../domain/feed/i_feed_service.dart';
import '../../domain/post/post_entry.dart';

class FeedService implements IFeedService {
  final IFeedRepository feedRepository;
  FeedService({
    required this.feedRepository,
  });

  @override
  Future<Either<ServerFailure, List<PostEntry>>> getNewsFeed({
    int limit = 10,
    int page = 1,
  }) {
    return feedRepository.getNewsFeed(limit: limit, page: page);
  }
}
