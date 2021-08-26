part of 'post_content_bloc.dart';

@freezed
class PostContentEvent with _$PostContentEvent {
  const factory PostContentEvent.metaDataFetchinStarted(String postId) =
      _MetaDataFetchingStarted;
}
