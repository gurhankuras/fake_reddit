import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/server_failures.dart';
import '../../domain/feed/i_feed_service.dart';
import '../../domain/post/i_post_cache_tagger.dart';
import '../../domain/post/post_entry.dart';
import '../../utility/mock_objects.dart';

// CacheKeyPrefixer
@LazySingleton(as: IFeedService)
class FakeFeedService implements IFeedService {
  final IPostCacheTagger tagger;
  FakeFeedService({
    required this.tagger,
  });

  @override
  Future<Either<ServerFailure, List<PostEntry>>> getNewsFeed({
    int limit = 10,
    int page = 1,
  }) async {
    await Future.delayed(Duration(seconds: 2));
    const totalPostCount = 50;
    final postsLeftCount = totalPostCount - (page * limit);
    // give last one
    if (postsLeftCount == 0) {
      return Future.value(
        right(
          List.generate(
            1,
            (index) =>
                //  mockPostEntry
                tagger.tag(mockPostEntry),
          ),
        ),
      );
    } else if (postsLeftCount > 0 && postsLeftCount <= limit) {
      return Future.value(right(
        List.generate(postsLeftCount, (index) => mockPostEntry)
            .map((post) => tagger.tag(post))
            .toList(),
      ));
    } else if (postsLeftCount > limit) {
      return Future.value(right(
        List.generate(
          limit,
          (index) => mockPostEntry,
        ).map((post) => tagger.tag(post)).toList(),
      ));
    }

    return Future.value(right(List.empty()));
  }
}
