part of 'post_comment_bloc.dart';

@freezed
class PostCommentEvent with _$PostCommentEvent {
  const factory PostCommentEvent.commentsFetchingStarted() =
      CommentsFetchingStarted;
  const factory PostCommentEvent.commentFilteringChanged() =
      CommentFilteringChanged;
  // const factory PostCommentEvent.postVisited(PostEntry post) = _PostVisited;
}
