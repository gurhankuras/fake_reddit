part of 'create_feed_bloc.dart';

@freezed
class CreateFeedState with _$CreateFeedState {
  const factory CreateFeedState.textFeedEntry({
    required String title,
    required String bodyText,
    required FeedType feedType,
    required bool autofocus,
    required Either<FeedEditFailure, Unit> error,
  }) = _TextFeedEntry;

  const factory CreateFeedState.linkFeedEntry({
    required String title,
    required String url,
    required FeedType feedType,
    required bool autofocus,
    required Either<FeedEditFailure, Unit> error,
  }) = _LinkFeedEntry;

  const factory CreateFeedState.imageFeedEntry({
    required String title,
    required List<ImageData> images,
    required FeedType feedType,
    required bool autofocus,
    required Either<FeedEditFailure, Unit> error,
    required Option<bool> dirty,
    required Option<DeletedImageData> lastDeletedImage,
    required int nextIndex,
  }) = _ImageFeedEntry;

  const factory CreateFeedState.videoFeedEntry({
    required String title,
    File? video,
    required FeedType feedType,
    required bool autofocus,
    required Either<FeedEditFailure, Unit> error,
  }) = _VideoFeedEntry;

  const factory CreateFeedState.pollFeedEntry({
    required String title,
    required String bodyText,
    required List<String> options,
    required int pollEndsDays,
    required FeedType feedType,
    required bool autofocus,
    required Either<FeedEditFailure, Unit> error,
  }) = _PollFeedEntry;
}

///
class DeletedImageData {
  final ImageData imageData;
  final int index;

  DeletedImageData(this.imageData, this.index);

  DeletedImageData copyWith({
    ImageData? imageData,
    int? index,
  }) {
    return DeletedImageData(
      imageData ?? this.imageData,
      index ?? this.index,
    );
  }
}

enum FeedType { text, link, image, video, poll }
