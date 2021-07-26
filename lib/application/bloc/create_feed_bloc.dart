import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/feed_edit_failure.dart';
import '../../utility/app_logger.dart';

part 'create_feed_bloc.freezed.dart';
part 'create_feed_event.dart';
part 'create_feed_state.dart';

class CreateFeedBloc extends Bloc<CreateFeedEvent, CreateFeedState> {
  CreateFeedBloc()
      : super(CreateFeedState.textFeedEntry(
          title: '',
          bodyText: '',
          feedType: FeedType.text,
          autofocus: false,
          error: left(const FeedEditFailure.empty(message: 'Empty')),
          touched: false,
        ));

  @override
  Stream<CreateFeedState> mapEventToState(
    CreateFeedEvent event,
  ) async* {
    // state.map(textFeedEntry: textFeedEntry, linkFeedEntry: linkFeedEntry, imageFeedEntry: imageFeedEntry, videoFeedEntry: videoFeedEntry, pollFeedEntry: pollFeedEntry)
    final title = state.title;
    yield* event.map(
      feedTypeChanged: (e) async* {
        yield* mapIndexToState(e.index, title, e.autofocus);
        // yield stateMap[FeedType.values[e.index]](title, e.autofocus);
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

  Map<FeedType, CreateFeedState Function(String title, bool autofocus)>
      stateMap = {
    FeedType.text: (String title, bool autofocus) =>
        CreateFeedState.textFeedEntry(
          title: title,
          bodyText: '',
          feedType: FeedType.text,
          autofocus: autofocus,
          error: left(const FeedEditFailure.empty(message: 'Empty')),
          touched: false,
        ),
    // FeedType.text: (String title, bool autofocus) =>
  };

  Stream<CreateFeedState> mapIndexToState(
      int index, String title, bool autofocus) async* {
    // if (state.feedType
    switch (index) {
      case 0:
        yield CreateFeedState.textFeedEntry(
          title: title,
          bodyText: '',
          feedType: FeedType.text,
          autofocus: autofocus,
          error: left(FeedEditFailure.empty(message: 'Empty')),
          touched: false,
        );
        break;
      case 1:
        yield CreateFeedState.linkFeedEntry(
          title: title,
          url: '',
          feedType: FeedType.link,
          autofocus: autofocus,
          error: left(FeedEditFailure.empty(message: 'Empty')),
          touched: false,
        );
        break;
      case 2:
        yield CreateFeedState.imageFeedEntry(
            title: title,
            feedType: FeedType.image,
            autofocus: autofocus,
            error: left(FeedEditFailure.empty(message: 'Empty')),
            touched: false);
        break;
      case 3:
        yield CreateFeedState.videoFeedEntry(
          title: title,
          feedType: FeedType.video,
          autofocus: autofocus,
          error: left(FeedEditFailure.empty(message: 'Empty')),
          touched: false,
        );
        break;
      case 4:
        yield CreateFeedState.pollFeedEntry(
            title: title,
            bodyText: '',
            options: ['', ''],
            pollEndsDays: 3,
            feedType: FeedType.poll,
            autofocus: autofocus,
            error: left(FeedEditFailure.empty(message: 'Empty')),
            touched: false
            // error: left(),
            );
        break;
      default:
    }
  }

  bool canProceed() {
    return state.title.isNotEmpty &&
        state.map(
          textFeedEntry: (state) => true,
          linkFeedEntry: (state) => state.url.isNotEmpty,
          imageFeedEntry: (state) => false,
          videoFeedEntry: (state) => false,
          pollFeedEntry: (state) =>
              state.options[0].isNotEmpty && state.options[1].isNotEmpty,
        );
  }
}
