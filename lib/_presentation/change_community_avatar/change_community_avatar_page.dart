import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import '../../application/change_community_avatar/change_community_avatar_bloc.dart';

import '../core/app/app_bottom_modal_sheet.dart';
import '../core/app/colors.dart';
import '../core/reusable/snap_list_view.dart';
import '../core/size_config.dart';
import 'crop_image_page.dart';

class ChangeCommunityAvatarPage extends StatelessWidget {
  const ChangeCommunityAvatarPage({Key? key}) : super(key: key);

  Future<bool> _showLeaveWithoutSavingDialog(BuildContext context) async {
    final exit = await showDialog<bool>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Leave without saving'),
          titleTextStyle:
              Theme.of(context).textTheme.headline6?.apply(fontSizeFactor: 0.8),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'You cannot undo this action',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.darkGrey,
                      shape: const StadiumBorder(),
                    ),
                    child: const Text(
                      'CANCEL',
                      style: TextStyle(color: AppColors.iron),
                    ),
                    onPressed: () => Navigator.of(context).pop(false),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.screenWidthPercentage(2),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: const StadiumBorder(),
                    ),
                    child: const Text(
                      'LEAVE',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () => Navigator.of(context).pop(true),
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
    return exit ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<ChangeCommunityAvatarBloc>(context, listen: false);
    final avatars = bloc.avatars;
    final colors = bloc.colors;

    return WillPopScope(
      onWillPop: () =>
          context.read<ChangeCommunityAvatarBloc>().state.hasAnyChanged
              ? _showLeaveWithoutSavingDialog(context)
              : Future.value(true),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Avatar'),
        ),
        body: Column(
          children: [
            const Spacer(flex: 1),
            AvatarPhotoDisplay(
              bloc: bloc,
              avatars: avatars,
              colors: colors,
            ),
            // Spacer(),
            SizedBox(
              height: 150,
              child: Stack(
                children: [
                  const ListCircleIndicator(),
                  snapList(context, avatars),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              child: Stack(
                children: [
                  colorSnapList(context, colors),
                  const ListCircleIndicator(),
                ],
              ),
            ),
            const Spacer(flex: 2)
          ],
        ),
      ),
    );
  }

  Widget snapList(BuildContext context, List<IconData> avatars) => SnapListView(
      curve: Curves.decelerate,
      itemBuilder: (context, index) => SizedBox(
            width: MediaQuery.of(context).size.width / 5,
            child: Icon(
              avatars[index],
              size: MediaQuery.of(context).size.width / 8,
            ),
          ),
      // selectedItemAnchor: SelectedItemAnchor.START,
      itemCount: avatars.length,
      itemExtent: MediaQuery.of(context).size.width / 5,
      onItemChanged: (index) {
        context
            .read<ChangeCommunityAvatarBloc>()
            .add(ChangeCommunityAvatarEvent.avatarIconChanged(index));
      });

  Widget colorSnapList(BuildContext context, List<Color> colors) =>
      SnapListView(
        curve: Curves.decelerate,
        itemBuilder: (context, index) => Container(
          width: MediaQuery.of(context).size.width / 4,
          height: MediaQuery.of(context).size.width / 4,
          padding: EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              color: colors[index],
              shape: BoxShape.circle,
            ),
            width: MediaQuery.of(context).size.width / 7,
            height: MediaQuery.of(context).size.width / 7,
          ),
        ),
        itemCount: colors.length,
        itemExtent: MediaQuery.of(context).size.width / 4,
        onItemChanged: (index) {
          context
              .read<ChangeCommunityAvatarBloc>()
              .add(ChangeCommunityAvatarEvent.avatarColorChanged(index));
        },
      );
}

class ListCircleIndicator extends StatelessWidget {
  const ListCircleIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 4,
          ),
          shape: BoxShape.circle,
        ),
        width: (MediaQuery.of(context).size.width / 4),
        height: (MediaQuery.of(context).size.width / 4),
      ),
    );
  }
}

class AvatarPhotoDisplay extends StatelessWidget {
  const AvatarPhotoDisplay({
    Key? key,
    required this.bloc,
    required this.avatars,
    required this.colors,
  }) : super(key: key);

  final ChangeCommunityAvatarBloc bloc;
  final List<IconData> avatars;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.width * 0.4,
      child: Stack(
        fit: StackFit.expand,
        children: [
          BlocConsumer<ChangeCommunityAvatarBloc, ChangeCommunityAvatarState>(
            listenWhen: (previous, current) =>
                previous.selectedImage.isNone() &&
                current.selectedImage.isSome(),
            listener: (context, state) {
              state.selectedImage.fold(
                () => null,
                (bytes) => Navigator.of(context).push(
                  MaterialPageRoute<Uint8List>(
                    builder: (context) => BlocProvider.value(
                      value: bloc,
                      child: CropSample(
                        fileAsBytes: bytes,
                      ),
                    ),
                  ),
                ),
              );
            },
            builder: (context, state) {
              final image = state.croppedImage;

              return Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.width * 0.4,
                child: image.isNone()
                    ? Icon(
                        avatars[state.iconIndex],
                        size: MediaQuery.of(context).size.width * 0.3,
                      )
                    : null,
                decoration: BoxDecoration(
                  image: image.fold(
                    () => null,
                    (im) => DecorationImage(
                      image: MemoryImage(im),
                    ),
                  ),
                  color: image.isNone() ? colors[state.colorIndex] : null,
                  shape: BoxShape.circle,
                ),
              );
            },
          ),
          const CustomAvatarButton()
        ],
      ),
    );
  }
}

class CustomAvatarButton extends StatelessWidget {
  const CustomAvatarButton({Key? key}) : super(key: key);

  Future<void> _loadCustomAvatar(BuildContext dialogContext,
      BuildContext context, ImageSource source) async {
    Navigator.of(dialogContext).pop();
    context
        .read<ChangeCommunityAvatarBloc>()
        .add(ChangeCommunityAvatarEvent.loadingCustomImageSelected(source));
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: GestureDetector(
        onTap: () => _showImageSourceSheet(context),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.12,
          height: MediaQuery.of(context).size.width * 0.12,
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 2),
          ),
          child: Icon(
            Icons.camera_alt_outlined,
            size: MediaQuery.of(context).size.width * 0.07,
          ),
        ),
      ),
    );
  }

  void _showImageSourceSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      enableDrag: false,
      builder: (BuildContext dialogContext) {
        return AppModalBottomSheet(
          tiles: [
            ModelSheetTile(
              onAction: () => _loadCustomAvatar(
                dialogContext,
                context,
                ImageSource.camera,
              ),
              icon: Icons.camera_alt,
              text: 'Camera',
            ),
            ModelSheetTile(
              onAction: () => _loadCustomAvatar(
                dialogContext,
                context,
                ImageSource.gallery,
              ),
              icon: Icons.photo_library,
              text: 'Library',
            ),
          ],
        );
      },
    );
  }
}
