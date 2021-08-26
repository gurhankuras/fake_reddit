part of 'feed_bloc.dart';

@freezed
class FeedEvent with _$FeedEvent {
  const factory FeedEvent.refreshRequested() = _RefreshRequested;
  const factory FeedEvent.loadMoreRequested() = _LoadMoreRequested;
  const factory FeedEvent.fetchingStarted() = _FetchingStarted;
  const factory FeedEvent.postVisited({
    required String postId,
    required int commentCount,
    required int upvotes,
  }) = _PostVisited;
}
