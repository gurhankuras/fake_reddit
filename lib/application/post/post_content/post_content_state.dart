part of 'post_content_bloc.dart';

@freezed
class PostContentState with _$PostContentState {
  const factory PostContentState.initial() = _Initial;
  const factory PostContentState.loading() = _Loading;
  const factory PostContentState.fetched({
    required int commentCount,
    required int upvotes,
  }) = _Fetched;

  const factory PostContentState.failed(ServerFailure failure) = _Failed;
}
