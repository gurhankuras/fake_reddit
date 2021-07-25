part of 'create_feed_bloc.dart';

@freezed
class CreateFeedState with _$CreateFeedState {
  const factory CreateFeedState.textFeedEntry({
    required String title,
    required String bodyText,
    required FeedType feedType,
    required bool autofocus,
  }) = _TextFeedEntry;

  const factory CreateFeedState.linkFeedEntry({
    required String title,
    required String url,
    required FeedType feedType,
    required bool autofocus,
  }) = _LinkFeedEntry;

  const factory CreateFeedState.imageFeedEntry({
    required String title,
    File? image,
    required FeedType feedType,
    required bool autofocus,
  }) = _ImageFeedEntry;

  const factory CreateFeedState.videoFeedEntry({
    required String title,
    File? video,
    required FeedType feedType,
    required bool autofocus,
  }) = _VideoFeedEntry;

  const factory CreateFeedState.pollFeedEntry({
    required String title,
    required String bodyText,
    required List<String> options,
    required int pollEndsDays,
    required FeedType feedType,
    required bool autofocus,
  }) = _PollFeedEntry;
}

enum FeedType { text, link, image, video, poll }
