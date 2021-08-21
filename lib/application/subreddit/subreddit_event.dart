part of 'subreddit_bloc.dart';

@freezed
class SubredditEvent with _$SubredditEvent {
  const factory SubredditEvent.cardDisplayChanged(PostDisplayType displayType) =
      _CardDisplayChanged;
  const factory SubredditEvent.feedFetchingStarted() = _FeedFetchingStarted;
  const factory SubredditEvent.subredditInfoFetchingStarted() =
      _SubredditInfoFetchingStarted;
  const factory SubredditEvent.subredditInfoLoaded(SubredditInfo info) =
      _SubredditInfoLoaded;
  const factory SubredditEvent.postsLoaded(List<PostEntry> posts) =
      _PostsLoaded;
  const factory SubredditEvent.failed(ValueFailure<String> failure) = _Failed;

  // const factory SubredditEvent.feedFetchingStarted() = _FeedFetchingStarted;

}
