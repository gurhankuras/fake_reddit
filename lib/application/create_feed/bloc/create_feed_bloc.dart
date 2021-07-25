import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit_clone/utility/app_logger.dart';

part 'create_feed_event.dart';
part 'create_feed_state.dart';
part 'create_feed_bloc.freezed.dart';

class CreateFeedBloc extends Bloc<CreateFeedEvent, CreateFeedState> {
  CreateFeedBloc()
      : super(const CreateFeedState.textFeedEntry(
          title: '',
          bodyText: '',
          feedType: FeedType.text,
          autofocus: false,
        ));

  @override
  Stream<CreateFeedState> mapEventToState(
    CreateFeedEvent event,
  ) async* {
    // state.map(textFeedEntry: textFeedEntry, linkFeedEntry: linkFeedEntry, imageFeedEntry: imageFeedEntry, videoFeedEntry: videoFeedEntry, pollFeedEntry: pollFeedEntry)
    final title = state.title;
    print(title);
    yield* event.map(
      feedTypeChanged: (e) async* {
        yield* mapIndexToState(e.index, title, e.autofocus);
      },
      titleChanged: (e) async* {
        yield state.copyWith(title: e.title);
      },
      bodyTextChanged: (e) async* {
        yield* state.maybeMap(
          // TEXT
          textFeedEntry: (state) async* {
            yield state.copyWith(bodyText: e.bodyText);
          },
          // POLL
          pollFeedEntry: (state) async* {
            yield state.copyWith(bodyText: state.bodyText);
          },
          // ELSE
          orElse: () async* {
            yield state;
          },
        );
      },
      pollEndsChanged: (e) async* {
        yield* state.maybeMap(
          // POLL
          pollFeedEntry: (state) async* {
            yield state.copyWith(pollEndsDays: e.day);
          },
          // ELSE
          orElse: () async* {
            yield state;
          },
        );
      },
      pollOptionAdded: (e) async* {
        yield* state.maybeMap(
          // POLL
          pollFeedEntry: (state) async* {
            log.d('pollOptionAdded     dddd');
            yield state.copyWith(options: state.options..add(e.option));
          },
          // ELSE
          orElse: () async* {
            yield state;
          },
        );
      },
      urlChanged: (e) async* {
        yield* state.maybeMap(
          // LINK
          linkFeedEntry: (state) async* {
            yield state.copyWith(url: e.url);
          },
          // ELSE
          orElse: () async* {
            yield state;
          },
        );
      },
    );
  }

  Stream<CreateFeedState> mapIndexToState(
      int index, String title, bool autofocus) async* {
    switch (index) {
      case 0:
        yield CreateFeedState.textFeedEntry(
            title: title,
            bodyText: '',
            feedType: FeedType.text,
            autofocus: autofocus);
        break;
      case 1:
        yield CreateFeedState.linkFeedEntry(
            title: title,
            url: '',
            feedType: FeedType.link,
            autofocus: autofocus);
        break;
      case 2:
        yield CreateFeedState.imageFeedEntry(
            title: title, feedType: FeedType.image, autofocus: autofocus);
        break;
      case 3:
        yield CreateFeedState.videoFeedEntry(
            title: title, feedType: FeedType.video, autofocus: autofocus);
        break;
      case 4:
        yield CreateFeedState.pollFeedEntry(
          title: title,
          bodyText: '',
          options: ['', ''],
          pollEndsDays: 3,
          feedType: FeedType.poll,
          autofocus: autofocus,
        );
        break;
      default:
    }
  }
}
