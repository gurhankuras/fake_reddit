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
  }) : super(
          CreatePostState.textPostEntry(
            title: '',
            bodyText: '',
            feedType: PostType.text,
            autofocus: false,
            error: left(const PostEditFailure.empty(message: 'Empty')),
          ),
        ) {
    logInit(CreatePostBloc);
    registerEventHandlers();
  }

  void registerEventHandlers() {
    on<PostTypeChanged>(_onPostTypeChanged);
    on<TitleChanged>((event, emit) => emit(state.copyWith(title: event.title)));
    on<BodyTextChanged>(_onBodyTextChanged);
    on<UrlChanged>(_onUrlChanged);
    on<PollEndsPressed>(_onPollEndsPressed);
    on<PollOptionAdded>(_onPollOptionAdded);
    on<PollOptionEdited>(_onPollOptionEdited);
    on<PollOptionDeleted>(_onPollOptionDeleted);
    on<AddImageClicked>(_onAddImageClicked);
    on<ImageDeleted>(_onImageDeleted);
    on<RecoverLastDeletedImage>(_onRecoverLastDeletedImage);
    on<PostPosted>(_onPostPosted);
  }

  FutureOr<void> _onPostTypeChanged(
    PostTypeChanged event,
    Emitter<CreatePostState> emit,
  ) async {
    if (isDirty()) {
      final leave = await event.showDialog();
      if (leave == null) {
        emit(state);
      } else {
        if (leave) {
          emit(mapIndexToState(event.index, state.title, event.autofocus));
        } else {
          emit(state);
        }
      }
    } else {
      emit(mapIndexToState(event.index, state.title, event.autofocus));
    }
  }

  FutureOr<void> _onBodyTextChanged(
    BodyTextChanged event,
    Emitter<CreatePostState> emit,
  ) async {
    state.maybeMap(
      textPostEntry: (state) => emit(state.copyWith(bodyText: event.bodyText)),
      pollPostEntry: (state) => emit(state.copyWith(bodyText: state.bodyText)),
      orElse: () => emit(state),
    );
  }

  FutureOr<void> _onUrlChanged(
    UrlChanged event,
    Emitter<CreatePostState> emit,
  ) async {
    state.maybeMap(
      linkPostEntry: (state) => emit(state.copyWith(url: event.url)),
      orElse: () => emit(state),
    );
  }

  FutureOr<void> _onPollEndsPressed(
    PollEndsPressed event,
    Emitter<CreatePostState> emit,
  ) async {
    state.maybeMap(
      pollPostEntry: (state) async {
        final day = await event.showDays(Days.values[state.pollEndsDays - 1]);
        day != null ? emit(state.copyWith(pollEndsDays: day)) : emit(state);
      },
      orElse: () async => emit(state),
    );
  }

  FutureOr<void> _onPollOptionAdded(
    PollOptionAdded event,
    Emitter<CreatePostState> emit,
  ) {
    state.maybeMap(
      pollPostEntry: (state) => emit(
        state.copyWith(
          options: state.options.map((e) => e).toList()..add(event.option),
        ),
      ),
      orElse: () => emit(state),
    );
  }

  FutureOr<void> _onPollOptionEdited(
    PollOptionEdited event,
    Emitter<CreatePostState> emit,
  ) {
    state.maybeMap(
      pollPostEntry: (state) {
        final newOptions = state.options.map((opt) => opt).toList();
        newOptions[event.index] = event.option;
        emit(state.copyWith(options: newOptions));
      },
      orElse: () => emit(state),
    );
  }

  FutureOr<void> _onPollOptionDeleted(
    PollOptionDeleted event,
    Emitter<CreatePostState> emit,
  ) {
    state.maybeMap(
      pollPostEntry: (state) {
        final updatedOptions = state.options.map((opt) => opt).toList()
          ..removeAt(event.index);
        emit(state.copyWith(options: updatedOptions));
      },
      orElse: () => emit(state),
    );
  }

  FutureOr<void> _onAddImageClicked(
    AddImageClicked event,
    Emitter<CreatePostState> emit,
  ) async {
    final imagesOption = await imageService.pickImageMultiple();
    imagesOption.fold(
      // FAIL
      () => emit(state),
      (newImages) {
        // SUCCESS
        state.maybeMap(
          imagePostEntry: (state) {
            final newImageData =
                newImages.map((file) => ImageData.withEmptyInfo(image: file));
            emit(state.copyWith(
              images: state.images.map((e) => e).toList()..addAll(newImageData),
            ));
          },
          orElse: () => emit(state),
        );
      },
    );
  }

  FutureOr<void> _onImageDeleted(
    ImageDeleted event,
    Emitter<CreatePostState> emit,
  ) {
    state.maybeMap(
      imagePostEntry: (state) {
        final deletedIndex =
            state.images.indexWhere((data) => data.id == event.id);
        final deletedData = state.images[deletedIndex];

        emit(state.copyWith(
          images: state.images.where((data) => data.id != event.id).toList(),
          lastDeletedImage: some(DeletedImageData(deletedData, deletedIndex)),
        ));
      },
      orElse: () => emit(state),
    );
  }

  FutureOr<void> _onRecoverLastDeletedImage(
    RecoverLastDeletedImage event,
    Emitter<CreatePostState> emit,
  ) {
    state.maybeMap(
      imagePostEntry: (state) {
        state.lastDeletedImage.fold(
          () => emit(state),
          (deletedImageData) {
            final inserted = state.images
              ..insert(
                deletedImageData.index,
                deletedImageData.imageData.copyWith(),
              );
            emit(
              state.copyWith(
                images: inserted.map((e) => e).toList(),
                lastDeletedImage: none(),
              ),
            );
          },
        );
      },
      orElse: () => emit(state),
    );
  }

  FutureOr<void> _onPostPosted(
    PostPosted event,
    Emitter<CreatePostState> emit,
  ) {
    getIt<ISnackbarService>().success('Posted!');
    emit(state);
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
  };

  CreatePostState mapIndexToState(int index, String title, bool autofocus) {
    switch (index) {
      case 0:
        return CreatePostState.textPostEntry(
          title: title,
          bodyText: '',
          feedType: PostType.text,
          autofocus: autofocus,
          error: left(PostEditFailure.empty(message: 'Empty')),
        );
      case 1:
        return CreatePostState.linkPostEntry(
          title: title,
          url: '',
          feedType: PostType.link,
          autofocus: autofocus,
          error: left(PostEditFailure.empty(message: 'Empty')),
        );
      case 2:
        return CreatePostState.imagePostEntry(
          title: title,
          images: [],
          feedType: PostType.image,
          autofocus: autofocus,
          error: left(PostEditFailure.empty(message: 'Empty')),
          dirty: none(),
          lastDeletedImage: none(),
          nextIndex: -1,
        );
      case 3:
        return CreatePostState.videoPostEntry(
          title: title,
          feedType: PostType.video,
          autofocus: autofocus,
          error: left(PostEditFailure.empty(message: 'Empty')),
        );
      case 4:
        return CreatePostState.pollPostEntry(
          title: title,
          bodyText: '',
          options: ['', ''],
          pollEndsDays: 3,
          feedType: PostType.poll,
          autofocus: autofocus,
          error: left(PostEditFailure.empty(message: 'Empty')),
          // error: left(),
        );
      default:
        return state;
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
