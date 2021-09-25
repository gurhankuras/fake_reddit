import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_clone/domain/i_snackbar_service.dart';
import 'package:reddit_clone/injection.dart';

import '../../domain/i_image_service.dart';
import '../../domain/subreddit/i_subreddit_service.dart';
import '../../utility/log_init.dart';

part 'change_community_avatar_bloc.freezed.dart';
part 'change_community_avatar_event.dart';
part 'change_community_avatar_state.dart';

@injectable
class ChangeCommunityAvatarBloc
    extends Bloc<ChangeCommunityAvatarEvent, ChangeCommunityAvatarState> {
  final IImageService imageService;
  final ISubredditService communityService;
  ChangeCommunityAvatarBloc({
    required this.communityService,
    required this.imageService,
  }) : super(ChangeCommunityAvatarState.initial()) {
    logInit(ChangeCommunityAvatarBloc);
    registerEventHandlers();
  }

  void registerEventHandlers() {
    on<AvatarColorChanged>(_onAvatarColorChanged);
    on<AvatarIconChanged>(_onAvatarIconChanged);
    on<ImageCropped>(_onImageCropped);
    on<ImageSelected>(_onImageSelected);
    on<Saved>(_onSaved);
    on<LoadingCustomImageSelected>(_onLoadingCustomImageSelected);
  }

  FutureOr<void> _onAvatarColorChanged(
    AvatarColorChanged event,
    Emitter<ChangeCommunityAvatarState> emit,
  ) async {
    emit(
      state.copyWith(
        colorIndex: event.index,
        hasAnyChanged: true,
      ),
    );
  }

  FutureOr<void> _onAvatarIconChanged(
    AvatarIconChanged event,
    Emitter<ChangeCommunityAvatarState> emit,
  ) async {
    emit(
      state.copyWith(
        iconIndex: event.index,
        hasAnyChanged: true,
      ),
    );
  }

  FutureOr<void> _onLoadingCustomImageSelected(
    LoadingCustomImageSelected event,
    Emitter<ChangeCommunityAvatarState> emit,
  ) async {
    final fileOrNot = await imageService.select(source: event.source);
    fileOrNot.fold(
      () => emit(state),
      (image) {
        add(ChangeCommunityAvatarEvent.imageSelected(image));
        emit(state);
      },
    );
  }

  FutureOr<void> _onImageCropped(
    ImageCropped event,
    Emitter<ChangeCommunityAvatarState> emit,
  ) async {
    emit(
      state.copyWith(
        croppedImage: some(event.bytes),
        hasAnyChanged: true,
        selectedImage: none(),
      ),
    );
  }

  FutureOr<void> _onImageSelected(
    ImageSelected event,
    Emitter<ChangeCommunityAvatarState> emit,
  ) async {
    final bytes = event.image.readAsBytesSync();
    emit(
      state.copyWith(
        selectedImage: some(bytes),
        hasAnyChanged: true,
      ),
    );
  }

  FutureOr<void> _onSaved(
    Saved event,
    Emitter<ChangeCommunityAvatarState> emit,
  ) async {
    emit(state.copyWith(saving: true));
    if (state.croppedImage.isSome()) {
      final failureOrSuccess = await communityService.changeAvatar(
          '123232', state.croppedImage.getOrElse(() => Uint8List(0)));
      // await Future.delayed-(Duration(seconds: 1));
      failureOrSuccess.fold(
        (l) {
          emit(state.copyWith(saving: false, success: some(false)));
          emit(state.copyWith(success: none()));
          getIt<ISnackbarService>().error(
              'Sorry , there was an error updating the avatar for r/abc');
        },
        (r) {
          emit(state.copyWith(saving: false, success: some(true)));
        },
      );
    }
    emit(state.copyWith(saving: false));
  }

  List<IconData> get avatars => [
        Icons.g_mobiledata,
        Icons.gamepad,
        Icons.radar,
        Icons.face,
        Icons.wallet_giftcard,
        Icons.qr_code,
        Icons.cached,
        Icons.gamepad,
        Icons.radar,
        Icons.face,
        Icons.wallet_giftcard,
        Icons.qr_code,
        Icons.cached
      ];

  List<Color> get colors => [
        Colors.amber,
        Colors.redAccent,
        Colors.blue,
        Colors.pink,
        Colors.green,
        Colors.greenAccent,
        Colors.yellow,
        Colors.purple,
        Colors.cyan,
        Colors.indigo,
        Colors.teal,
        Colors.deepPurple,
      ];
}
