part of 'feed_bloc.dart';

@freezed
class FeedState with _$FeedState {
  const factory FeedState({
    required bool hasReachedMax,
    required List<PostEntry> posts,
    required bool fetchingLoading,
    required bool refreshLoading,
    required bool morePostLoading,
    required int page,
  }) = _FeedState;

  factory FeedState.initial() => FeedState(
        hasReachedMax: false,
        posts: [],
        fetchingLoading: false,
        morePostLoading: false,
        refreshLoading: false,
        page: 1,
      );
}
