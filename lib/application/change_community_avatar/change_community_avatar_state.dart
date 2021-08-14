part of 'change_community_avatar_bloc.dart';

@freezed
class ChangeCommunityAvatarState with _$ChangeCommunityAvatarState {
  const factory ChangeCommunityAvatarState({
    required bool hasAnyChanged,
    required int iconIndex,
    required int colorIndex,
    required Option<Uint8List> croppedImage,
    required Option<Uint8List> selectedImage,
    required bool saving,
    required Option<bool> success,
  }) = _ChangeCommunityAvatarState;

  factory ChangeCommunityAvatarState.initial() => ChangeCommunityAvatarState(
        iconIndex: 0,
        colorIndex: 0,
        croppedImage: none(),
        selectedImage: none(),
        hasAnyChanged: false,
        saving: false,
        success: none(),
      );
}
