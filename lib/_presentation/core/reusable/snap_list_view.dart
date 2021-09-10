import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
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
            // print('scroll: ${notification.metrics.pixels}');
            // print(
            // 'centerOffset: ${findCenterScrollOffset(scrollOffset: notification.metrics.pixels, maxWidth: constraints.maxWidth)}');
            setState(() {
              currentIndex = index;
            });
            // print(currentIndex);
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
