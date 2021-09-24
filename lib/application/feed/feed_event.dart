part of 'feed_bloc.dart';

@freezed
class FeedEvent with _$FeedEvent {
  const factory FeedEvent.refreshRequested() = RefreshRequested;
  const factory FeedEvent.loadMoreRequested() = LoadMoreRequested;
  const factory FeedEvent.fetchingStarted() = FetchingStarted;
  const factory FeedEvent.postVisited({
    required String postId,
    required int commentCount,
    required int upvotes,
  }) = PostVisited;
}
