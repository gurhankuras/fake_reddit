part of 'create_post_bloc.dart';

@freezed
class CreatePostState with _$CreatePostState {
  const factory CreatePostState.textPostEntry({
    required String title,
    required String bodyText,
    required PostType feedType,
    required bool autofocus,
    required Either<PostEditFailure, Unit> error,
  }) = _TextPostEntry;

  const factory CreatePostState.linkPostEntry({
    required String title,
    required String url,
    required PostType feedType,
    required bool autofocus,
    required Either<PostEditFailure, Unit> error,
  }) = _LinkPostEntry;

  const factory CreatePostState.imagePostEntry({
    required String title,
    required List<ImageData> images,
    required PostType feedType,
    required bool autofocus,
    required Either<PostEditFailure, Unit> error,
    required Option<bool> dirty,
    required Option<DeletedImageData> lastDeletedImage,
    required int nextIndex,
  }) = _ImagePostEntry;

  const factory CreatePostState.videoPostEntry({
    required String title,
    File? video,
    required PostType feedType,
    required bool autofocus,
    required Either<PostEditFailure, Unit> error,
  }) = _VideoPostEntry;

  const factory CreatePostState.pollPostEntry({
    required String title,
    required String bodyText,
    required List<String> options,
    required int pollEndsDays,
    required PostType feedType,
    required bool autofocus,
    required Either<PostEditFailure, Unit> error,
  }) = _PollPostEntry;
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
