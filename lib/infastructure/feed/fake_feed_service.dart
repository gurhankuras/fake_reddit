import 'dart:math';

import '../../_presentation/core/app/feed_card.dart';
import '../../domain/core/server_failures.dart';
import 'package:dartz/dartz.dart';
import '../../domain/feed/i_feed_service.dart';
import '../../domain/post_entry.dart';

class FakeFeedService implements IFeedService {
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
      return Future.value(right(List.generate(1, (index) => mockPostEntry)));
    } else if (postsLeftCount > 0 && postsLeftCount <= limit) {
      return Future.value(
          right(List.generate(postsLeftCount, (index) => mockPostEntry)));
    } else if (postsLeftCount > limit) {
      return Future.value(
          right(List.generate(limit, (index) => mockPostEntry)));
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