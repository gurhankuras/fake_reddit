import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

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
  }

  @override
  Stream<ChangeCommunityAvatarState> mapEventToState(
    ChangeCommunityAvatarEvent event,
  ) async* {
    yield* event.map(
      avatarColorChanged: (e) async* {
        yield state.copyWith(
          colorIndex: e.index,
          hasAnyChanged: true,
        );
      },
      avatarIconChanged: (e) async* {
        yield state.copyWith(
          iconIndex: e.index,
          hasAnyChanged: true,
        );
      },
      imageCropped: (e) async* {
        yield state.copyWith(
          croppedImage: some(e.bytes),
          hasAnyChanged: true,
          selectedImage: none(),
        );
      },
      loadingCustomImageSelected: (e) async* {
        final fileOrNot = await imageService.select(source: e.source);
        yield* fileOrNot.fold(
          () async* {
            yield state;
          },
          (image) async* {
            add(ChangeCommunityAvatarEvent.imageSelected(image));
            yield state;
          },
        );
      },
      imageSelected: (e) async* {
        final bytes = e.image.readAsBytesSync();
        yield state.copyWith(
          selectedImage: some(bytes),
          hasAnyChanged: true,
        );
      },
      saved: (e) async* {
        yield state.copyWith(saving: true);
        if (state.croppedImage.isSome()) {
          final failureOrSuccess = await communityService.changeAvatar(
              '123232', state.croppedImage.getOrElse(() => Uint8List(0)));
          // await Future.delayed-(Duration(seconds: 1));
          yield* failureOrSuccess.fold(
            (l) async* {
              yield state.copyWith(saving: false, success: some(false));
              yield state.copyWith(success: none());
            },
            (r) async* {
              yield state.copyWith(saving: false, success: some(true));
            },
          );
        }
        yield state.copyWith(saving: false);
      },
    );
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
