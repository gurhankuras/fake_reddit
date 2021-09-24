import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/comment/comment_data.dart';
import '../../../domain/comment/i_comment_service.dart';
import '../../../domain/core/value_failure.dart';
import '../../../infastructure/core/cache_service.dart';
import '../../../utility/log_init.dart';

part 'post_comment_bloc.freezed.dart';
part 'post_comment_event.dart';
part 'post_comment_state.dart';

@injectable
class PostCommentBloc extends Bloc<PostCommentEvent, PostCommentState> {
  final ICommentService commentService;
  final CacheService cacheService;
  final String? postId;
  PostCommentBloc({
    required this.commentService,
    required this.cacheService,
    @factoryParam this.postId,
  }) : super(const PostCommentState.initial()) {
    logInit(PostCommentBloc);
    _registerEventHandlers();
  }

  void _registerEventHandlers() {
    on<CommentsFetchingStarted>(_onCommentsFetchingStarted);
    on<CommentFilteringChanged>(_onCommentFilteringChanged);
  }

  FutureOr<void> _onCommentsFetchingStarted(
    CommentsFetchingStarted event,
    Emitter<PostCommentState> emit,
  ) async {
    emit(const PostCommentState.loading());
    final commentsOrFailure = await commentService.fetchPostComments('1234');
    commentsOrFailure.fold(
      (failure) => emit(PostCommentState.fetchingFailed(failure)),
      (comments) => emit(PostCommentState.fetchingCompleted(comments)),
    );
  }

  FutureOr<void> _onCommentFilteringChanged(
    CommentFilteringChanged event,
    Emitter<PostCommentState> emit,
  ) async {}
}
