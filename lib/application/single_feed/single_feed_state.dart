part of 'single_feed_bloc.dart';

@freezed
class SingleFeedState with _$SingleFeedState {
  const factory SingleFeedState.initial() = _Initial;
  const factory SingleFeedState.loading() = _Loading;
  const factory SingleFeedState.fetchingCompleted(List<CommentData> comments) =
      _FetchingCompleted;
  const factory SingleFeedState.fetchingFailed(ValueFailure<String> failure) =
      _FetchingFailed;
}
