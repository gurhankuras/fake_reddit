part of 'post_comment_bloc.dart';

@freezed
class PostCommentEvent with _$PostCommentEvent {
  const factory PostCommentEvent.commentsFetchingStarted() =
      _CommentsFetchingStarted;
  const factory PostCommentEvent.commentFilteringChanged() =
      _CommentFilteringChanged;
  // const factory PostCommentEvent.postVisited(PostEntry post) = _PostVisited;
}
