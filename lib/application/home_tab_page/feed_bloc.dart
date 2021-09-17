import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit_clone/utility/log_init.dart';

import '../../domain/feed/i_feed_service.dart';
import '../../domain/post/post_entry.dart';
import 'package:injectable/injectable.dart';

part 'feed_bloc.freezed.dart';
part 'feed_event.dart';
part 'feed_state.dart';

@injectable
class FeedBloc extends Bloc<FeedEvent, FeedState> {
  static int postLimit = 10;
  IFeedService feedService;
  FeedBloc({
    required this.feedService,
  }) : super(FeedState.initial()) {
    logInit(FeedBloc);
  }

  @override
  Stream<FeedState> mapEventToState(
    FeedEvent event,
  ) async* {
    yield* event.map(
      refreshRequested: refreshRequestedHandler,
      loadMoreRequested: loadMoreRequestedHandler,
      fetchingStarted: fetchingStartedHandler,
      postVisited: postVisitedHandler,
    );
  }

  Stream<FeedState> refreshRequestedHandler(_RefreshRequested e) async* {
    yield state.copyWith(refreshLoading: true);
    final postsOrFailure =
        await feedService.getNewsFeed(page: 1, limit: postLimit);
    yield* postsOrFailure.fold(
      (l) async* {
        yield state.copyWith(refreshLoading: false);
      },
      (posts) async* {
        yield state.copyWith(
          posts: posts,
          refreshLoading: false,
          page: 2,
          hasReachedMax: false,
        );
      },
    );
  }

  Stream<FeedState> loadMoreRequestedHandler(
    _LoadMoreRequested e,
  ) async* {
    yield state.copyWith(morePostLoading: true);
    final postsOrFailure =
        await feedService.getNewsFeed(page: state.page, limit: postLimit);

    yield* postsOrFailure.fold(
      (l) async* {
        yield state.copyWith(morePostLoading: false);
      },
      (posts) async* {
        if (posts.isEmpty) {
          yield state.copyWith(morePostLoading: false, hasReachedMax: true);
        } else {
          yield state.copyWith(
            posts: List.of(state.posts)..addAll(posts),
            morePostLoading: false,
            page: state.page + 1,
          );
        }
      },
    );
  }

  Stream<FeedState> fetchingStartedHandler(_FetchingStarted e) async* {
    yield state.copyWith(fetchingLoading: true);
    final postsOrFailure =
        await feedService.getNewsFeed(page: state.page, limit: postLimit);

    yield* postsOrFailure.fold(
      (l) async* {
        yield state.copyWith(fetchingLoading: false);
      },
      (posts) async* {
        yield state.copyWith(
          posts: List.of(state.posts)..addAll(posts),
          fetchingLoading: false,
          page: state.page + 1,
        );
      },
    );
  }

  Stream<FeedState> postVisitedHandler(_PostVisited e) async* {
    final posts = state.posts.map((post) {
      if (post.id == e.postId) {
        return post.copyWith(
          commentCount: e.commentCount,
          upvotes: e.upvotes,
          visited: true,
        );
      }
      return post;
    }).toList();

    yield state.copyWith(posts: posts);
  }
}
