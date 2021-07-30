import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide id;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit_clone/_presentation/core/app_snackbar.dart';
import 'package:reddit_clone/_presentation/feed_form/create_feed_entry_page.dart';
import 'package:reddit_clone/application/main_page_bloc/main_page_bloc.dart';
import 'package:reddit_clone/domain/feed_edit_failure.dart';
import 'package:reddit_clone/domain/i_image_service.dart';
import 'package:reddit_clone/domain/image_data.dart';
import 'package:reddit_clone/utility/app_logger.dart';

part 'create_feed_event.dart';
part 'create_feed_state.dart';
part 'create_feed_bloc.freezed.dart';

class CreateFeedBloc extends Bloc<CreateFeedEvent, CreateFeedState> {
  final IImageService imageService;
  final MainPageBloc mainPageBloc;
  // late final StreamSubscription sub;
  CreateFeedBloc({
    required this.imageService,
    required this.mainPageBloc,
  }) : super(CreateFeedState.textFeedEntry(
          title: '',
          bodyText: '',
          feedType: FeedType.text,
          autofocus: false,
          error: left(const FeedEditFailure.empty(message: 'Empty')),
        ));

  @override
  Stream<CreateFeedState> mapEventToState(
    CreateFeedEvent event,
  ) async* {
    // state.map(textFeedEntry: textFeedEntry, linkFeedEntry: linkFeedEntry, imageFeedEntry: imageFeedEntry, videoFeedEntry: videoFeedEntry, pollFeedEntry: pollFeedEntry)
    final title = state.title;
    yield* event.map(feedTypeChanged: (e) async* {
      if (isDirty()) {
        final leave = await e.showDialog();
        if (leave == null) {
          yield state;
        } else {
          if (leave) {
            yield* mapIndexToState(e.index, title, e.autofocus);
          } else {
            yield state;
          }
        }
      } else {
        yield* mapIndexToState(e.index, title, e.autofocus);
      }
    }, titleChanged: (e) async* {
      yield state.copyWith(title: e.title);
    }, bodyTextChanged: (e) async* {
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
    }, pollEndsPressed: (e) async* {
      yield* state.maybeMap(
        // POLL
        pollFeedEntry: (state) async* {
          final day = await e.showDays(Days.values[state.pollEndsDays - 1]);
          if (day != null) {
            yield state.copyWith(pollEndsDays: day);
          } else {
            yield state;
          }
        },
        // ELSE
        orElse: () async* {
          yield state;
        },
      );
    }, pollOptionAdded: (e) async* {
      yield* state.maybeMap(
        // POLL
        pollFeedEntry: (state) async* {
          log.d('pollOptionAdded     dddd');
          yield state.copyWith(
              options: state.options.map((e) => e).toList()..add(e.option));
        },
        // ELSE
        orElse: () async* {
          yield state;
        },
      );
    }, urlChanged: (e) async* {
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
    }, addImageClicked: (e) async* {
      final imagesOption = await imageService.pickImageMultiple();
      yield* imagesOption.fold(
        // FAIL
        () async* {
          yield state;
        },
        (newImages) async* {
          // SUCCESS
          yield* state.maybeMap(
            imageFeedEntry: (state) async* {
              final newImageData =
                  newImages.map((file) => ImageData.withEmptyInfo(image: file));
              yield state.copyWith(
                images: state.images.map((e) => e).toList()
                  ..addAll(newImageData),
              );
            },
            orElse: () async* {
              yield state;
            },
          );
        },
      );
    }, imageDeleted: (e) async* {
      yield* state.maybeMap(
        imageFeedEntry: (state) async* {
          final deletedIndex =
              state.images.indexWhere((data) => data.id == e.id);
          final deletedData = state.images[deletedIndex];

          yield state.copyWith(
            images: state.images.where((data) => data.id != e.id).toList(),
            lastDeletedImage: some(DeletedImageData(deletedData, deletedIndex)),
          );
        },
        orElse: () async* {
          yield state;
        },
      );
    }, recoverLastDeletedImage: (e) async* {
      yield* state.maybeMap(
        imageFeedEntry: (state) async* {
          yield* state.lastDeletedImage.fold(
            () async* {
              yield state;
            },
            (deletedImageData) async* {
              final inserted = state.images
                ..insert(
                  deletedImageData.index,
                  deletedImageData.imageData.copyWith(),
                );
              yield state.copyWith(
                images: inserted.map((e) => e).toList(),
                lastDeletedImage: none(),
              );
            },
          );
        },
        orElse: () async* {
          yield state;
        },
      );
    }, pollOptionDeleted: (e) async* {
      yield* state.maybeMap(
        pollFeedEntry: (state) async* {
          yield state.copyWith(
            options: state.options.map((opt) => opt).toList()
              ..removeAt(e.index),
          );
        },
        orElse: () async* {
          yield state;
        },
      );
    }, pollOptionEdited: (e) async* {
      yield* state.maybeMap(
        pollFeedEntry: (state) async* {
          final newOptions = state.options.map((opt) => opt).toList();
          newOptions[e.index] = e.option;
          yield state.copyWith(
            options: newOptions,
          );
        },
        orElse: () async* {
          yield state;
        },
      );
    }, feedPosted: (e) async* {
      mainPageBloc.add(const MainPageEvent.snackbarShowed());
      yield state;
    });
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
        );
        break;
      case 1:
        yield CreateFeedState.linkFeedEntry(
          title: title,
          url: '',
          feedType: FeedType.link,
          autofocus: autofocus,
          error: left(FeedEditFailure.empty(message: 'Empty')),
        );
        break;
      case 2:
        yield CreateFeedState.imageFeedEntry(
          title: title,
          images: [],
          feedType: FeedType.image,
          autofocus: autofocus,
          error: left(FeedEditFailure.empty(message: 'Empty')),
          dirty: none(),
          lastDeletedImage: none(),
          nextIndex: -1,
        );
        break;
      case 3:
        yield CreateFeedState.videoFeedEntry(
          title: title,
          feedType: FeedType.video,
          autofocus: autofocus,
          error: left(FeedEditFailure.empty(message: 'Empty')),
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
          imageFeedEntry: (state) => state.images.isNotEmpty,
          videoFeedEntry: (state) => state.video != null,
          pollFeedEntry: (state) =>
              state.options[0].isNotEmpty && state.options[1].isNotEmpty,
        );
  }

  bool isDirty() {
    return state.map(
      textFeedEntry: (state) => state.bodyText.isNotEmpty,
      linkFeedEntry: (state) => state.url.isNotEmpty,
      imageFeedEntry: (state) => state.images.isNotEmpty,
      videoFeedEntry: (state) => state.video != null,
      pollFeedEntry: (state) => state.options.any((opt) => opt.isNotEmpty),
    );
  }
}
