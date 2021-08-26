import 'package:dartz/dartz.dart';
import 'package:reddit_clone/domain/post/i_post_cache_tagger.dart';
import 'package:reddit_clone/domain/post/text_post_entry.dart';

import 'package:reddit_clone/infastructure/core/cache_service.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/server_failures.dart';
import '../../domain/feed/i_feed_service.dart';
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



/*

 yield* event.map(
      refreshRequested: (e) async* {
        yield state.copyWith(refreshLoading: true);
        await Future.delayed(Duration(seconds: 2));
        yield state.copyWith(
          posts: [
            mockPostEntry,
            mockPostEntry,
            mockPostEntry,
            mockPostEntry,
            mockPostEntry,
            mockPostEntry,
            mockPostEntry,
          ],
          refreshLoading: false,
        );
      },
      loadMoreRequested: (e) async* {
        yield state.copyWith(morePostLoading: true);
        await Future.delayed(Duration(seconds: 2));
        yield state.copyWith(
          posts: List.of(state.posts)
            ..addAll([
              mockPostEntry,
              mockPostEntry,
              mockPostEntry,
              mockPostEntry,
              mockPostEntry,
              mockPostEntry,
              mockPostEntry,
              mockPostEntry,
            ]),
          morePostLoading: false,
        );
      },
      fetchingStarted: (e) async* {
        yield state.copyWith(fetchingLoading: true);
        await Future.delayed(Duration(seconds: 2));
        yield state.copyWith(
          posts: List.of(state.posts)
            ..addAll([
              mockPostEntry,
              mockPostEntry,
              mockPostEntry,
              mockPostEntry,
              mockPostEntry,
              mockPostEntry,
              mockPostEntry,
            ]),
          fetchingLoading: false,
        );
      },
    );
  }
 */