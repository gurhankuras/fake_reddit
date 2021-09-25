import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../utility/log_init.dart';

import '../../domain/subreddit/subreddit_info.dart';
import '../../domain/core/value_failure.dart';
import '../../domain/post/post_entry.dart';
import '../../domain/subreddit/i_subreddit_service.dart';

part 'subreddit_bloc.freezed.dart';
part 'subreddit_event.dart';
part 'subreddit_state.dart';

// TODO split into 2 bloc
// - feed bloc
// - subreddit info bloc

@injectable
class SubredditBloc extends Bloc<SubredditEvent, SubredditState> {
  final ISubredditService subredditService;
  SubredditBloc({
    required this.subredditService,
  }) : super(SubredditState.initial()) {
    logInit(SubredditBloc);
    registerEventHandlers();
  }

  void registerEventHandlers() {
    on<CardDisplayChanged>(_onCardDisplayChanged);
    on<FeedFetchingStarted>(_onFeedFetchingStarted);
    on<SubredditInfoFetchingStarted>(_onSubredditInfoFetchingStarted);
    on<SubredditInfoLoaded>(_onSubredditInfoLoaded);
    on<PostsLoaded>(_onPostsLoaded);
    on<Failed>(_onFailed);
  }

  FutureOr<void> _onCardDisplayChanged(
    CardDisplayChanged event,
    Emitter<SubredditState> emit,
  ) {
    emit(state.copyWith(displayType: event.displayType));
  }

  FutureOr<void> _onFeedFetchingStarted(
    FeedFetchingStarted event,
    Emitter<SubredditState> emit,
  ) async {
    emit(state.copyWith(
      subredditInfoLoading: true,
      postsLoading: true,
    ));

    subredditService
        .getSubredditInfo(
          subredditName: 'berserklejerk',
        )
        .then(
          (info) => info.fold(
            (failure) => add(SubredditEvent.failed(failure)),
            (info) => add(SubredditEvent.subredditInfoLoaded(info)),
          ),
        );

    subredditService
        .getPosts(
          subredditName: 'examplesubreddit',
        )
        .then(
          (posts) => posts.fold(
            (failure) => add(SubredditEvent.failed(failure)),
            (posts) => add(SubredditEvent.postsLoaded(posts)),
          ),
        );
  }

  FutureOr<void> _onSubredditInfoFetchingStarted(
    SubredditInfoFetchingStarted event,
    Emitter<SubredditState> emit,
  ) async {}

  FutureOr<void> _onSubredditInfoLoaded(
    SubredditInfoLoaded event,
    Emitter<SubredditState> emit,
  ) async {
    emit(
      state.copyWith(
        subredditInfoLoading: false,
        subredditInfo: some(event.info),
      ),
    );
  }

  FutureOr<void> _onPostsLoaded(
    PostsLoaded event,
    Emitter<SubredditState> emit,
  ) async {
    emit(
      state.copyWith(
        postsLoading: false,
        posts: some(event.posts),
      ),
    );
  }

  FutureOr<void> _onFailed(
    Failed event,
    Emitter<SubredditState> emit,
  ) async {
    emit(state.copyWith(
      failure: some(event.failure),
    ));
  }
}
