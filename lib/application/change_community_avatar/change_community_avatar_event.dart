part of 'change_community_avatar_bloc.dart';

@freezed
class ChangeCommunityAvatarEvent with _$ChangeCommunityAvatarEvent {
  const factory ChangeCommunityAvatarEvent.avatarColorChanged(int index) =
      AvatarColorChanged;
  const factory ChangeCommunityAvatarEvent.avatarIconChanged(int index) =
      AvatarIconChanged;
  const factory ChangeCommunityAvatarEvent.imageCropped(Uint8List bytes) =
      ImageCropped;
  const factory ChangeCommunityAvatarEvent.loadingCustomImageSelected(
      ImageSource source) = LoadingCustomImageSelected;
  const factory ChangeCommunityAvatarEvent.imageSelected(File image) =
      ImageSelected;
  const factory ChangeCommunityAvatarEvent.saved() = Saved;
}
