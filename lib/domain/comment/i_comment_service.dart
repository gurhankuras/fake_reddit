import 'package:dartz/dartz.dart';
import 'comment_data.dart';
import '../core/value_failure.dart';

abstract class ICommentService {
  Future<Either<ValueFailure<String>, List<CommentData>>> fetchPostComments(
      String id);
}
