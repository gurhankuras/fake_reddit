import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:reddit_clone/_presentation/single_feed/single_feed_page.dart';
import 'package:reddit_clone/domain/comment/comment_data.dart';
import 'package:reddit_clone/domain/comment/i_comment_service.dart';
import 'package:reddit_clone/domain/core/value_failure.dart';

part 'single_feed_bloc.freezed.dart';
part 'single_feed_event.dart';
part 'single_feed_state.dart';

class SingleFeedBloc extends Bloc<SingleFeedEvent, SingleFeedState> {
  final ICommentService commentService;
  SingleFeedBloc({required this.commentService})
      : super(const SingleFeedState.initial());

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
    );
  }
}
