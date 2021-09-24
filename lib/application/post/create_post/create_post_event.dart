part of 'create_post_bloc.dart';

@freezed
class CreatePostEvent with _$CreatePostEvent {
  const factory CreatePostEvent.feedTypeChanged({
    required int index,
    required bool autofocus,
    required Future<bool?> Function() showDialog,
  }) = PostTypeChanged;
  const factory CreatePostEvent.titleChanged(String title) = TitleChanged;
  const factory CreatePostEvent.bodyTextChanged(String bodyText) =
      BodyTextChanged;
  const factory CreatePostEvent.urlChanged(String url) = UrlChanged;
  const factory CreatePostEvent.pollEndsPressed({
    required Future<int?> Function(Days) showDays,
    // required int day,
  }) = PollEndsPressed;
  const factory CreatePostEvent.pollOptionAdded(String option) =
      PollOptionAdded;
  const factory CreatePostEvent.pollOptionEdited(int index, String option) =
      PollOptionEdited;

  const factory CreatePostEvent.pollOptionDeleted(int index) =
      PollOptionDeleted;
  const factory CreatePostEvent.addImageClicked() = AddImageClicked;
  const factory CreatePostEvent.imageDeleted(String id) = ImageDeleted;
  const factory CreatePostEvent.recoverLastDeletedImage() =
      RecoverLastDeletedImage;

  const factory CreatePostEvent.feedPosted() = PostPosted;

  // const factory CreatePostEvent.linkdPostSelected() = _LinkdPostSelected;
  // const factory CreatePostEvent.imagedPostSelected() = _ImagedPostSelected;
  // const factory CreatePostEvent.videodPostSelected() = _VideodPostSelected;
  // const factory CreatePostEvent.polldPostSelected() = _PolldPostSelected;
}
