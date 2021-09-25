import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../utility/log_init.dart';

import '../../../domain/core/server_failures.dart';
import '../../../infastructure/core/cache_service.dart';
import '../../../infastructure/post/post_service.dart';
import 'package:injectable/injectable.dart';

part 'post_content_bloc.freezed.dart';
part 'post_content_event.dart';
part 'post_content_state.dart';

@injectable
class PostContentBloc extends Bloc<PostContentEvent, PostContentState> {
  final PostService postService;
  final CacheService cacheService;
  PostContentBloc({
    required this.postService,
    required this.cacheService,
  }) : super(PostContentState.initial()) {
    logInit(PostContentBloc);
    registerEventHandlers();
  }

  void registerEventHandlers() {
    on<MetaDataFetchingStarted>(_onMetaDataFetchingStarted);
  }

  FutureOr<void> _onMetaDataFetchingStarted(
    MetaDataFetchingStarted event,
    Emitter<PostContentState> emit,
  ) async {
    emit(PostContentState.loading());
    final postInfo =
        await postService.fetchCommentCountAndUpvotes(event.postId);

    final commentCount = postInfo['commentCount']!;
    final upvotes = postInfo['upvotes']!;

    emit(
      PostContentState.fetched(
        commentCount: commentCount,
        upvotes: upvotes,
      ),
    );
  }
}
