import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_edit_failure.freezed.dart';

@freezed
class PostEditFailure with _$PostEditFailure {
  const factory PostEditFailure.exceedingLength({
    required String message,
    required int maxLength,
  }) = _ExceedingLength;

  const factory PostEditFailure.empty({required String message}) = _Empty;
}
