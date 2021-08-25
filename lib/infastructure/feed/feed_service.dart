import 'package:dartz/dartz.dart';
import 'package:reddit_clone/domain/core/server_failures.dart';

import 'package:reddit_clone/domain/core/value_failure.dart';
import 'package:reddit_clone/domain/feed/i_feed_repository.dart';
import 'package:reddit_clone/domain/feed/i_feed_service.dart';
import 'package:reddit_clone/domain/post_entry.dart';
import 'package:reddit_clone/domain/i_network_connectivity.dart';

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
