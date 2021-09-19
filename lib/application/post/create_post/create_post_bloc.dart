import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide id;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../_presentation/post/create_post/create_post_page.dart';
import '../../../domain/feed_edit_failure.dart';
import '../../../domain/i_image_service.dart';
import '../../../domain/i_snackbar_service.dart';
import '../../../domain/image_data.dart';
import '../../../domain/subreddit/subreddit_info.dart';
import '../../../injection.dart';
import '../../../utility/app_logger.dart';
import '../../../utility/log_init.dart';

part 'create_post_bloc.freezed.dart';
part 'create_post_event.dart';
part 'create_post_state.dart';

@injectable
class CreatePostBloc extends Bloc<CreatePostEvent, CreatePostState> {
  final IImageService imageService;
  final SubredditInfo? community;
  // final MainPageBloc mainPageBloc;
  // late final StreamSubscription sub;
  CreatePostBloc({
    required this.imageService,
    @factoryParam this.community,
  }) : super(CreatePostState.textPostEntry(
          title: '',
          bodyText: '',
          feedType: PostType.text,
          autofocus: false,
          error: left(const PostEditFailure.empty(message: 'Empty')),
        )) {
    logInit(CreatePostBloc);
  }

  @override
  Stream<CreatePostState> mapEventToState(
    CreatePostEvent event,
  ) async* {
    // state.map(textPostEntry: textPostEntry, linkPostEntry: linkPostEntry, imagePostEntry: imagePostEntry, videoPostEntry: videoPostEntry, pollPostEntry: pollPostEntry)
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
        textPostEntry: (state) async* {
          yield state.copyWith(bodyText: e.bodyText);
        },
        // POLL
        pollPostEntry: (state) async* {
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
        pollPostEntry: (state) async* {
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
        pollPostEntry: (state) async* {
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
        linkPostEntry: (state) async* {
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
            imagePostEntry: (state) async* {
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
        imagePostEntry: (state) async* {
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
        imagePostEntry: (state) async* {
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
        pollPostEntry: (state) async* {
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
        pollPostEntry: (state) async* {
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
      // mainPageBloc.add(const MainPageEvent.snackbarShowed());
      getIt<ISnackbarService>().success('Posted!');
      yield state;
    });
  }

  Map<PostType, CreatePostState Function(String title, bool autofocus)>
      stateMap = {
    PostType.text: (String title, bool autofocus) =>
        CreatePostState.textPostEntry(
          title: title,
          bodyText: '',
          feedType: PostType.text,
          autofocus: autofocus,
          error: left(const PostEditFailure.empty(message: 'Empty')),
        ),
    // PostType.text: (String title, bool autofocus) =>
  };

  Stream<CreatePostState> mapIndexToState(
      int index, String title, bool autofocus) async* {
    // if (state.feedType
    switch (index) {
      case 0:
        yield CreatePostState.textPostEntry(
          title: title,
          bodyText: '',
          feedType: PostType.text,
          autofocus: autofocus,
          error: left(PostEditFailure.empty(message: 'Empty')),
        );
        break;
      case 1:
        yield CreatePostState.linkPostEntry(
          title: title,
          url: '',
          feedType: PostType.link,
          autofocus: autofocus,
          error: left(PostEditFailure.empty(message: 'Empty')),
        );
        break;
      case 2:
        yield CreatePostState.imagePostEntry(
          title: title,
          images: [],
          feedType: PostType.image,
          autofocus: autofocus,
          error: left(PostEditFailure.empty(message: 'Empty')),
          dirty: none(),
          lastDeletedImage: none(),
          nextIndex: -1,
        );
        break;
      case 3:
        yield CreatePostState.videoPostEntry(
          title: title,
          feedType: PostType.video,
          autofocus: autofocus,
          error: left(PostEditFailure.empty(message: 'Empty')),
        );
        break;
      case 4:
        yield CreatePostState.pollPostEntry(
          title: title,
          bodyText: '',
          options: ['', ''],
          pollEndsDays: 3,
          feedType: PostType.poll,
          autofocus: autofocus,
          error: left(PostEditFailure.empty(message: 'Empty')),

          // error: left(),
        );
        break;
      default:
    }
  }

  bool canProceed() {
    return state.title.isNotEmpty &&
        state.map(
          textPostEntry: (state) => true,
          linkPostEntry: (state) => state.url.isNotEmpty,
          imagePostEntry: (state) => state.images.isNotEmpty,
          videoPostEntry: (state) => state.video != null,
          pollPostEntry: (state) =>
              state.options[0].isNotEmpty && state.options[1].isNotEmpty,
        );
  }

  bool isDirty() {
    return state.map(
      textPostEntry: (state) => state.bodyText.isNotEmpty,
      linkPostEntry: (state) => state.url.isNotEmpty,
      imagePostEntry: (state) => state.images.isNotEmpty,
      videoPostEntry: (state) => state.video != null,
      pollPostEntry: (state) => state.options.any((opt) => opt.isNotEmpty),
    );
  }
}

enum PostType { text, link, image, video, poll }
