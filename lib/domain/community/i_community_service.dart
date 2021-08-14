import 'dart:io';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:reddit_clone/domain/core/value_failure.dart';

abstract class ICommunityService {
  Future<Either<ValueFailure<String>, Unit>> changeAvatar(
      String communityId, Uint8List image);
}
