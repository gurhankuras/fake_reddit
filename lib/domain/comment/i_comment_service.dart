import 'package:dartz/dartz.dart';
import 'package:reddit_clone/domain/comment/comment_data.dart';
import 'package:reddit_clone/domain/core/value_failure.dart';

abstract class ICommentService {
  Future<Either<ValueFailure<String>, List<CommentData>>> fetchPostComments(
      String id);
}
