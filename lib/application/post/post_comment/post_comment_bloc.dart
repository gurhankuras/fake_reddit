import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:reddit_clone/application/home_tab_page/feed_bloc.dart';
import 'package:reddit_clone/domain/post/post_entry.dart';
import 'package:reddit_clone/infastructure/core/cache_service.dart';
import 'package:reddit_clone/utility/log_init.dart';

import '../../../domain/comment/comment_data.dart';
import '../../../domain/comment/i_comment_service.dart';
import '../../../domain/core/value_failure.dart';
import '../../../utility/app_logger.dart';
import 'package:injectable/injectable.dart';

part 'post_comment_bloc.freezed.dart';
part 'post_comment_event.dart';
part 'post_comment_state.dart';

@injectable
class PostCommentBloc extends Bloc<PostCommentEvent, PostCommentState> {
  final ICommentService commentService;
  final CacheService cacheService;
  final String? postId;
  // final FeedBloc homeTabBloc;
  // final PostEntry post;
  PostCommentBloc({
    required this.commentService,
    required this.cacheService,
    @factoryParam this.postId,
  }) : super(const PostCommentState.initial()) {
    logInit(PostCommentBloc);
  }

  @override
  Stream<PostCommentState> mapEventToState(
    PostCommentEvent event,
  ) async* {
    yield* event.map(
      commentsFetchingStarted: (e) async* {
        yield const PostCommentState.loading();
        final commentsOrFailure =
            await commentService.fetchPostComments('1234');

        yield* commentsOrFailure.fold(
          (failure) async* {
            yield PostCommentState.fetchingFailed(failure);
          },
          (comments) async* {
            yield PostCommentState.fetchingCompleted(comments);
          },
        );
      },
      commentFilteringChanged: (e) async* {},
      // postVisited: (e) async* {
      //   cacheService.setString(e.post.id, e.post.id);
      //   e.post.setVisited(true);
      //   print('postVisited');
      //   add(PostCommentEvent.commentsFetchingStarted());
      // });
    );
  }
}
