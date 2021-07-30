part of 'create_feed_bloc.dart';

@freezed
class CreateFeedEvent with _$CreateFeedEvent {
  const factory CreateFeedEvent.feedTypeChanged({
    required int index,
    required bool autofocus,
    required Future<bool?> Function() showDialog,
  }) = _FeedTypeChanged;
  const factory CreateFeedEvent.titleChanged(String title) = _TitleChanged;
  const factory CreateFeedEvent.bodyTextChanged(String bodyText) =
      _BodyTextChanged;
  const factory CreateFeedEvent.urlChanged(String url) = _UrlChanged;
  const factory CreateFeedEvent.pollEndsPressed({
    required Future<int?> Function(Days) showDays,
    // required int day,
  }) = _PollEndsPressed;
  const factory CreateFeedEvent.pollOptionAdded(String option) =
      _PollOptionAdded;
  const factory CreateFeedEvent.pollOptionEdited(int index, String option) =
      _PollOptionEdited;

  const factory CreateFeedEvent.pollOptionDeleted(int index) =
      _PollOptionDeleted;
  const factory CreateFeedEvent.addImageClicked() = _AddImageClicked;
  const factory CreateFeedEvent.imageDeleted(String id) = _ImageDeleted;
  const factory CreateFeedEvent.recoverLastDeletedImage() =
      _RecoverLastDeletedImage;

  const factory CreateFeedEvent.feedPosted() = _FeedPosted;

  // const factory CreateFeedEvent.linkFeedSelected() = _LinkFeedSelected;
  // const factory CreateFeedEvent.imageFeedSelected() = _ImageFeedSelected;
  // const factory CreateFeedEvent.videoFeedSelected() = _VideoFeedSelected;
  // const factory CreateFeedEvent.pollFeedSelected() = _PollFeedSelected;
}
