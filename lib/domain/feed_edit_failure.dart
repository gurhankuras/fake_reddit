import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_edit_failure.freezed.dart';

@freezed
class FeedEditFailure with _$FeedEditFailure {
  const factory FeedEditFailure.exceedingLength({
    required String message,
    required int maxLength,
  }) = _ExceedingLength;

  const factory FeedEditFailure.empty({required String message}) = _Empty;
}
