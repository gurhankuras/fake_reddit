import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:reddit_clone/application/home_tab_page/home_tab_page_bloc.dart';
import 'package:reddit_clone/domain/post/post_entry.dart';
import 'package:reddit_clone/infastructure/core/cache_service.dart';

import '../../domain/comment/comment_data.dart';
import '../../domain/comment/i_comment_service.dart';
import '../../domain/core/value_failure.dart';
import '../../utility/app_logger.dart';

part 'single_feed_bloc.freezed.dart';
part 'single_feed_event.dart';
part 'single_feed_state.dart';

class SingleFeedBloc extends Bloc<SingleFeedEvent, SingleFeedState> {
  final ICommentService commentService;
  final CacheService cacheService;
  // final HomeTabPageBloc homeTabBloc;
  // final PostEntry post;
  SingleFeedBloc({
    required this.commentService,
    required this.cacheService,
    // required this.homeTabBloc,
  }) : super(const SingleFeedState.initial()) {
    log.i('SingleFeedBloc created!');
  }

  @override
  Stream<SingleFeedState> mapEventToState(
    SingleFeedEvent event,
  ) async* {
    yield* event.map(
        commentsFetchingStarted: (e) async* {
          yield const SingleFeedState.loading();
          final commentsOrFailure =
              await commentService.fetchPostComments('1234');

          yield* commentsOrFailure.fold(
            (failure) async* {
              yield SingleFeedState.fetchingFailed(failure);
            },
            (comments) async* {
              yield SingleFeedState.fetchingCompleted(comments);
            },
          );
        },
        commentFilteringChanged: (e) async* {},
        postVisited: (e) async* {
          cacheService.setString(e.post.id, e.post.id);
          e.post.setVisited(true);
          print('postVisited');
          add(SingleFeedEvent.commentsFetchingStarted());
        });
  }
}
