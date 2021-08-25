import 'dart:typed_data';

import 'package:dartz/dartz.dart';

import '../community.dart';
import '../core/value_failure.dart';
import '../post_entry.dart';

abstract class ISubredditService {
  Future<Either<ValueFailure<String>, Unit>> changeAvatar(
      String communityId, Uint8List image);
  Future<Either<ValueFailure<String>, SubredditInfo>> getSubredditInfo(
      {required String subredditName});
  Future<Either<ValueFailure<String>, List<PostEntry>>> getPosts(
      {required String subredditName, int page = 1});
}
