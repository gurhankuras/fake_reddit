import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/feed/i_feed_service.dart';
import '../../domain/post_entry.dart';

part 'home_tab_page_bloc.freezed.dart';
part 'home_tab_page_event.dart';
part 'home_tab_page_state.dart';

class HomeTabPageBloc extends Bloc<HomeTabPageEvent, HomeTabPageState> {
  IFeedService feedService;
  HomeTabPageBloc({
    required this.feedService,
  }) : super(HomeTabPageState.initial());

  @override
  Stream<HomeTabPageState> mapEventToState(
    HomeTabPageEvent event,
  ) async* {
    yield* event.map(
      refreshRequested: (e) async* {
        yield state.copyWith(refreshLoading: true);
        // await Future.delayed(Duration(seconds: 2));
        final postsOrFailure = await feedService.getNewsFeed(page: 1, limit: 1);
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
      },
      loadMoreRequested: (e) async* {
        yield state.copyWith(morePostLoading: true);
        final postsOrFailure =
            await feedService.getNewsFeed(page: state.page, limit: 1);

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
      },
      fetchingStarted: (e) async* {
        yield state.copyWith(fetchingLoading: true);
        final postsOrFailure =
            await feedService.getNewsFeed(page: state.page, limit: 1);

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
      },
    );
  }
}
