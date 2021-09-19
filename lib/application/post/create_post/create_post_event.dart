part of 'create_post_bloc.dart';

@freezed
class CreatePostEvent with _$CreatePostEvent {
  const factory CreatePostEvent.feedTypeChanged({
    required int index,
    required bool autofocus,
    required Future<bool?> Function() showDialog,
  }) = _PostTypeChanged;
  const factory CreatePostEvent.titleChanged(String title) = _TitleChanged;
  const factory CreatePostEvent.bodyTextChanged(String bodyText) =
      _BodyTextChanged;
  const factory CreatePostEvent.urlChanged(String url) = _UrlChanged;
  const factory CreatePostEvent.pollEndsPressed({
    required Future<int?> Function(Days) showDays,
    // required int day,
  }) = _PollEndsPressed;
  const factory CreatePostEvent.pollOptionAdded(String option) =
      _PollOptionAdded;
  const factory CreatePostEvent.pollOptionEdited(int index, String option) =
      _PollOptionEdited;

  const factory CreatePostEvent.pollOptionDeleted(int index) =
      _PollOptionDeleted;
  const factory CreatePostEvent.addImageClicked() = _AddImageClicked;
  const factory CreatePostEvent.imageDeleted(String id) = _ImageDeleted;
  const factory CreatePostEvent.recoverLastDeletedImage() =
      _RecoverLastDeletedImage;

  const factory CreatePostEvent.feedPosted() = _dPostPosted;

  // const factory CreatePostEvent.linkdPostSelected() = _LinkdPostSelected;
  // const factory CreatePostEvent.imagedPostSelected() = _ImagedPostSelected;
  // const factory CreatePostEvent.videodPostSelected() = _VideodPostSelected;
  // const factory CreatePostEvent.polldPostSelected() = _PolldPostSelected;
}
