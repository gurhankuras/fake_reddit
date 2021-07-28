import 'dart:async';
import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';

part 'change_community_avatar_event.dart';
part 'change_community_avatar_state.dart';
part 'change_community_avatar_bloc.freezed.dart';

class ChangeCommunityAvatarBloc
    extends Bloc<ChangeCommunityAvatarEvent, ChangeCommunityAvatarState> {
  ChangeCommunityAvatarBloc() : super(ChangeCommunityAvatarState.initial());

  @override
  Stream<ChangeCommunityAvatarState> mapEventToState(
    ChangeCommunityAvatarEvent event,
  ) async* {
    yield* event.map(
      avatarColorChanged: (e) async* {},
      avatarIconChanged: (e) async* {},
      imageCropped: (e) async* {},
      loadingCustomImageSelected: (e) async* {},
    );
  }
}
