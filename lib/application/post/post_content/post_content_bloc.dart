import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:reddit_clone/application/home_tab_page/feed_bloc.dart';
import 'package:reddit_clone/domain/core/server_failures.dart';
import 'package:reddit_clone/domain/post/post_entry.dart';
import 'package:reddit_clone/infastructure/core/cache_service.dart';
import 'package:reddit_clone/infastructure/post/post_service.dart';

part 'post_content_bloc.freezed.dart';
part 'post_content_event.dart';
part 'post_content_state.dart';

class PostContentBloc extends Bloc<PostContentEvent, PostContentState> {
  final PostService postService;
  final CacheService cacheService;
  final FeedBloc homeTabBloc;
  PostContentBloc({
    required this.postService,
    required this.cacheService,
    required this.homeTabBloc,
  }) : super(PostContentState.initial());

  @override
  Stream<PostContentState> mapEventToState(
    PostContentEvent event,
  ) async* {
    yield* event.map(
      metaDataFetchinStarted: (e) async* {
        yield PostContentState.loading();
        final postInfo =
            await postService.fetchCommentCountAndUpvotes(e.postId);

        final commentCount = postInfo['commentCount']!;
        final upvotes = postInfo['upvotes']!;

        yield PostContentState.fetched(
          commentCount: commentCount,
          upvotes: upvotes,
        );
        cacheService.prefs.setString(e.postId, e.postId).then(
              (value) => homeTabBloc.add(
                FeedEvent.postVisited(
                  postId: e.postId,
                  commentCount: commentCount,
                  upvotes: upvotes,
                ),
              ),
            );
      },
    );
  }
}
