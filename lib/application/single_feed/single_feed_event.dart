part of 'single_feed_bloc.dart';

@freezed
class SingleFeedEvent with _$SingleFeedEvent {
  const factory SingleFeedEvent.commentsFetchingStarted() =
      _CommentsFetchingStarted;
  const factory SingleFeedEvent.commentFilteringChanged() =
      _CommentFilteringChanged;
}
