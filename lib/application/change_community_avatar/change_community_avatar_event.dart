part of 'change_community_avatar_bloc.dart';

@freezed
class ChangeCommunityAvatarEvent with _$ChangeCommunityAvatarEvent {
  const factory ChangeCommunityAvatarEvent.avatarColorChanged(int index) =
      _AvatarColorChanged;
  const factory ChangeCommunityAvatarEvent.avatarIconChanged(int index) =
      _AvatarIconChanged;
  const factory ChangeCommunityAvatarEvent.imageCropped(Uint8List bytes) =
      _ImageCropped;
  const factory ChangeCommunityAvatarEvent.loadingCustomImageSelected(
      ImageSource source) = _LoadingCustomImageSelected;
  const factory ChangeCommunityAvatarEvent.imageSelected(File image) =
      _ImageSelected;
}
