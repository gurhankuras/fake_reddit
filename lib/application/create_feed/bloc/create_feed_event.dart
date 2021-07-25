part of 'create_feed_bloc.dart';

// 300 title

@freezed
class CreateFeedEvent with _$CreateFeedEvent {
  const factory CreateFeedEvent.feedTypeChanged(int index, bool autofocus) =
      _FeedTypeChanged;
  const factory CreateFeedEvent.titleChanged(String title) = _TitleChanged;
  const factory CreateFeedEvent.bodyTextChanged(String bodyText) =
      _BodyTextChanged;
  const factory CreateFeedEvent.urlChanged(String url) = _UrlChanged;
  const factory CreateFeedEvent.pollEndsChanged(int day) = _PollEndsChanged;
  const factory CreateFeedEvent.pollOptionAdded(String option) =
      _PollOptionAdded;

  // const factory CreateFeedEvent.linkFeedSelected() = _LinkFeedSelected;
  // const factory CreateFeedEvent.imageFeedSelected() = _ImageFeedSelected;
  // const factory CreateFeedEvent.videoFeedSelected() = _VideoFeedSelected;
  // const factory CreateFeedEvent.pollFeedSelected() = _PollFeedSelected;
}
