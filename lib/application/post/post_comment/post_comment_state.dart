part of 'post_comment_bloc.dart';

@freezed
class PostCommentState with _$PostCommentState {
  const factory PostCommentState.initial() = _Initial;
  const factory PostCommentState.loading() = _Loading;
  const factory PostCommentState.fetchingCompleted(List<CommentData> comments) =
      _FetchingCompleted;
  const factory PostCommentState.fetchingFailed(ValueFailure<String> failure) =
      _FetchingFailed;
}
