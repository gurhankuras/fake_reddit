import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../utility/log_init.dart';

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
    registerEventHandlers();
  }

  void registerEventHandlers() {
    on<RefreshRequested>(_onRefreshRequested);
    on<LoadMoreRequested>(_onLoadMoreRequested);
    on<FetchingStarted>(_onFetchingStarted);
    on<PostVisited>(_onPostVisited);
  }

  FutureOr<void> _onRefreshRequested(
    RefreshRequested event,
    Emitter<FeedState> emit,
  ) async {
    emit(state.copyWith(refreshLoading: true));
    final postsOrFailure =
        await feedService.getNewsFeed(page: 1, limit: postLimit);
    postsOrFailure.fold(
      (l) => emit(
        state.copyWith(refreshLoading: false),
      ),
      (posts) => emit(
        state.copyWith(
          posts: posts,
          refreshLoading: false,
          page: 2,
          hasReachedMax: false,
        ),
      ),
    );
  }

  FutureOr<void> _onLoadMoreRequested(
    LoadMoreRequested event,
    Emitter<FeedState> emit,
  ) async {
    emit(state.copyWith(morePostLoading: true));
    final postsOrFailure =
        await feedService.getNewsFeed(page: state.page, limit: postLimit);

    postsOrFailure.fold(
      (l) => emit(state.copyWith(morePostLoading: false)),
      (posts) => posts.isEmpty
          ? emit(
              state.copyWith(
                morePostLoading: false,
                hasReachedMax: true,
              ),
            )
          : emit(
              state.copyWith(
                posts: List.of(state.posts)..addAll(posts),
                morePostLoading: false,
                page: state.page + 1,
              ),
            ),
    );
  }

  FutureOr<void> _onFetchingStarted(
    FetchingStarted event,
    Emitter<FeedState> emit,
  ) async {
    emit(state.copyWith(fetchingLoading: true));
    final postsOrFailure =
        await feedService.getNewsFeed(page: state.page, limit: postLimit);

    postsOrFailure.fold(
        (l) => emit(state.copyWith(
              fetchingLoading: false,
            )),
        (posts) => emit(
              state.copyWith(
                posts: List.of(state.posts)..addAll(posts),
                fetchingLoading: false,
                page: state.page + 1,
              ),
            ));
  }

  FutureOr<void> _onPostVisited(
    PostVisited event,
    Emitter<FeedState> emit,
  ) async {
    final posts = state.posts
        .map(
          (post) => post.id == event.postId
              ? post.copyWith(
                  commentCount: event.commentCount,
                  upvotes: event.upvotes,
                  visited: true,
                )
              : post,
        )
        .toList();

    emit(state.copyWith(posts: posts));
  }
}
