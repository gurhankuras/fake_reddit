import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reddit_clone/_presentation/core/app/app_bottom_modal_sheet.dart';
import 'package:reddit_clone/infastructure/image_service.dart';
import 'package:reddit_clone/routes.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class ChangeCommunityAvatarPage extends StatefulWidget {
  const ChangeCommunityAvatarPage({Key? key}) : super(key: key);

  @override
  _ChangeCommunityAvatarPageState createState() =>
      _ChangeCommunityAvatarPageState();
}

class _ChangeCommunityAvatarPageState extends State<ChangeCommunityAvatarPage> {
  int iconCurrentIndex = 0;
  int colorCurrentIndex = 0;
  Uint8List? file;

  void _onItemChanged(int index) {
    setState(() {
      colorCurrentIndex = index;
    });
  }

  void _onItemFocused(int index) {
    setState(() {
      colorCurrentIndex = index;
    });
  }

  Future<void> _loadCustomAvatar(
      BuildContext dialogContext, ImageSource source) async {
    Navigator.of(dialogContext).pop();
    final service = ImageService();
    final imageOption = await service.select(source: source);
    final croppedImage = await imageOption.fold(
      () async {
        print('HATA OLDU');
        return null;
      },
      (file) async => await Navigator.of(context).pushNamed<Uint8List>(
          Routes.cropImagePage,
          arguments: await file.readAsBytes()),
    );
    if (croppedImage != null) {
      setState(() {
        file = croppedImage;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Avatar'),
      ),
      body: Column(
        children: [
          Spacer(flex: 1),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.width * 0.4,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.width * 0.4,
                  child: file == null
                      ? Icon(
                          avatars[iconCurrentIndex],
                          size: MediaQuery.of(context).size.width * 0.3,
                        )
                      : null,
                  decoration: BoxDecoration(
                    image: file != null
                        ? DecorationImage(image: MemoryImage(file!))
                        : null,
                    color: file == null ? colors[colorCurrentIndex] : null,
                    shape: BoxShape.circle,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () async {
                      showModalBottomSheet<void>(
                        context: context,
                        enableDrag: false,
                        builder: (BuildContext dialogContext) {
                          return AppModalBottomSheet(
                            tiles: [
                              ModelSheetTile(
                                onAction: () => _loadCustomAvatar(
                                  dialogContext,
                                  ImageSource.camera,
                                ),
                                icon: Icons.camera_alt,
                                text: 'Camera',
                              ),
                              ModelSheetTile(
                                onAction: () => _loadCustomAvatar(
                                  dialogContext,
                                  ImageSource.gallery,
                                ),
                                icon: Icons.photo_library,
                                text: 'Library',
                              ),
                            ],
                          );
                        },
                      );
                    },
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
                )
              ],
            ),
          ),
          // Spacer(),
          SizedBox(
            height: 150,
            child: Stack(
              children: [
                circleIndicator,
                snapList,
              ],
            ),
          ),
          SizedBox(
            height: 100,
            child: Stack(
              children: [
                colorSnapList,
                circleIndicator,
              ],
            ),
          ),
          Spacer(flex: 2)
        ],
      ),
    );
  }

  Widget get snapList => SnapListView(
        curve: Curves.decelerate,
        itemBuilder: (context, index) => Container(
          width: MediaQuery.of(context).size.width / 5,
          child: Icon(
            avatars[index],
            size: MediaQuery.of(context).size.width / 8,
          ),
        ),
        // selectedItemAnchor: SelectedItemAnchor.START,
        itemCount: avatars.length,
        itemExtent: MediaQuery.of(context).size.width / 5,
        onItemChanged: (index) => setState(() {
          iconCurrentIndex = index;
        }),
      );

  Widget get colorSnapList => SnapListView(
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
        onItemChanged: (index) => setState(() {
          colorCurrentIndex = index;
        }),
      );
  Widget get circleIndicator => Align(
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 5,
            ),
            shape: BoxShape.circle,
          ),
          width: (MediaQuery.of(context).size.width / 4),
          height: (MediaQuery.of(context).size.width / 4),
        ),
      );

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

const _kDuration = Duration(milliseconds: 350);
const _kScrollPhysics = AlwaysScrollableScrollPhysics(
  parent: BouncingScrollPhysics(),
);

class SnapListView extends StatefulWidget {
  // final List<Color> items;
  final IndexedWidgetBuilder itemBuilder;
  final ScrollPhysics scrollPhysics;
  final void Function(int index)? onItemChanged;
  final int itemCount;
  final void Function(int index)? onItemFocused;
  final Curve curve;
  final Duration duration;

  final double itemExtent;
  const SnapListView({
    Key? key,
    required this.itemBuilder,
    this.scrollPhysics = _kScrollPhysics,
    this.onItemChanged,
    required this.itemCount,
    this.onItemFocused,
    this.curve = Curves.linear,
    this.duration = _kDuration,
    required this.itemExtent,
  }) : super(key: key);

  @override
  _SnapListViewState createState() => _SnapListViewState();
}

class _SnapListViewState extends State<SnapListView> {
  late ScrollController controller;
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    controller = ScrollController();
  }

  bool get isIndexInBounds =>
      currentIndex >= 0 && currentIndex <= widget.itemCount - 1;

  double findCenterScrollOffset({
    required double scrollOffset,
    required double maxWidth,
  }) {
    return scrollOffset + maxWidth / 2;
  }

  findCurrentIndex({
    required double scrollOffset,
    required double maxWidth,
  }) {
    final centerOffset =
        findCenterScrollOffset(scrollOffset: scrollOffset, maxWidth: maxWidth);
    final listPadding = maxWidth / 2 - widget.itemExtent / 2;
    final currentIndex = (centerOffset - listPadding) ~/ widget.itemExtent;
    return currentIndex;
  }

  animateToBasedOnCenter({
    required double scrollOffset,
    required double listPadding,
  }) {
    Future.delayed(Duration.zero, () {
      final offset = currentIndex * widget.itemExtent;
      controller
          .animateTo(
            offset,
            duration: widget.duration,
            curve: widget.curve,
          )
          .then((_) => widget.onItemFocused?.call(currentIndex));
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) =>
          NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          final listPadding = constraints.maxWidth / 2 - widget.itemExtent / 2;
          final index = findCurrentIndex(
            scrollOffset: notification.metrics.pixels,
            maxWidth: constraints.maxWidth,
          );
          if (index != currentIndex &&
              isIndexInBounds &&
              !notification.metrics.outOfRange) {
            print('scroll: ${notification.metrics.pixels}');
            print(
                'centerOffset: ${findCenterScrollOffset(scrollOffset: notification.metrics.pixels, maxWidth: constraints.maxWidth)}');
            setState(() {
              currentIndex = index;
            });
            print(currentIndex);
            widget.onItemChanged?.call(index);
          }

          if (notification is UserScrollNotification &&
              notification.direction == ScrollDirection.idle &&
              isIndexInBounds) {
            animateToBasedOnCenter(
              scrollOffset: notification.metrics.pixels,
              listPadding: listPadding,
            );
          }
          return true;
        },
        child: ListView.builder(
          controller: controller,
          padding: EdgeInsets.symmetric(
            horizontal: constraints.maxWidth / 2 - widget.itemExtent / 2,
          ),
          physics: widget.scrollPhysics,
          scrollDirection: Axis.horizontal,
          itemCount: widget.itemCount,
          itemExtent: widget.itemExtent,
          itemBuilder: widget.itemBuilder,
        ),
      ),
    );
  }
}
