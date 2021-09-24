part of 'subreddit_bloc.dart';

@freezed
class SubredditEvent with _$SubredditEvent {
  const factory SubredditEvent.cardDisplayChanged(PostDisplayType displayType) =
      CardDisplayChanged;
  const factory SubredditEvent.feedFetchingStarted() = FeedFetchingStarted;
  const factory SubredditEvent.subredditInfoFetchingStarted() =
      SubredditInfoFetchingStarted;
  const factory SubredditEvent.subredditInfoLoaded(SubredditInfo info) =
      SubredditInfoLoaded;
  const factory SubredditEvent.postsLoaded(List<PostEntry> posts) = PostsLoaded;
  const factory SubredditEvent.failed(ValueFailure<String> failure) = Failed;

  // const factory SubredditEvent.feedFetchingStarted() = _FeedFetchingStarted;

}
