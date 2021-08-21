part of 'subreddit_bloc.dart';

@freezed
class SubredditState with _$SubredditState {
  const factory SubredditState({
    required Option<SubredditInfo> subredditInfo,
    required Option<List<PostEntry>> posts,
    required Option<ValueFailure<String>> failure,
    required bool subredditInfoLoading,
    required bool postsLoading,
    required PostDisplayType displayType,
  }) = _SubredditState;

  factory SubredditState.initial() => SubredditState(
        displayType: PostDisplayType.card,
        failure: none(),
        posts: none(),
        subredditInfoLoading: true,
        postsLoading: true,
        subredditInfo: none(),
      );
}

enum PostDisplayType {
  card,
}
