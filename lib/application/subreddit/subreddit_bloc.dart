import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit_clone/domain/community.dart';
import 'package:reddit_clone/domain/core/value_failure.dart';
import 'package:reddit_clone/domain/feed_entry.dart';

import 'package:reddit_clone/domain/subreddit/i_subreddit_service.dart';

part 'subreddit_event.dart';
part 'subreddit_state.dart';
part 'subreddit_bloc.freezed.dart';

@injectable
class SubredditBloc extends Bloc<SubredditEvent, SubredditState> {
  final ISubredditService subredditService;
  SubredditBloc({
    required this.subredditService,
  }) : super(SubredditState.initial());

  @override
  Stream<SubredditState> mapEventToState(
    SubredditEvent event,
  ) async* {
    yield* event.map(
      cardDisplayChanged: (e) async* {
        yield state.copyWith(displayType: e.displayType);
      },
      feedFetchingStarted: (e) async* {
        yield state.copyWith(
          subredditInfoLoading: true,
          postsLoading: true,
        );

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
              subredditName: 'berserklejerk',
            )
            .then(
              (posts) => posts.fold(
                (failure) => add(SubredditEvent.failed(failure)),
                (posts) => add(SubredditEvent.postsLoaded(posts)),
              ),
            );
      },
      subredditInfoFetchingStarted: (e) async* {},
      failed: (e) async* {
        yield state.copyWith(
          failure: some(e.failure),
        );
      },
      postsLoaded: (e) async* {
        yield state.copyWith(
          postsLoading: false,
          posts: some(e.posts),
        );
      },
      subredditInfoLoaded: (e) async* {
        yield state.copyWith(
          subredditInfoLoading: false,
          subredditInfo: some(e.info),
        );
      },
    );
  }
}
