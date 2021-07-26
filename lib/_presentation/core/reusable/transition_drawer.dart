import 'package:flutter/material.dart';

class MyDrawerController {
  // TODO: ADD late
  VoidCallback? openDrawer;
  VoidCallback? closeDrawer;
  VoidCallback? toggle;

  MyDrawerController();

  void dispose() {}
}

class TransitionDrawer extends StatefulWidget {
  // TODO add curve and scale parameters
  final Widget page;
  final Widget drawer;
  final Color drawerColor;
  final double drawerWidth;

  final double? dragWidth;
  final MyDrawerController? controller;
  final Duration? duration;

  TransitionDrawer({
    required this.page,
    required this.drawer,
    required this.drawerColor,
    required this.drawerWidth,
    this.controller,
    this.duration,
    this.dragWidth = 35,
  });

  @override
  _TransitionDrawerState createState() => _TransitionDrawerState();
}

enum _DrawerState { Opened, Closed }
enum _OnRelease { toLeft, toRight }

class _TransitionDrawerState extends State<TransitionDrawer>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  late Animation<double> scaleAnimation;
  bool isAnimating = false;
  _OnRelease onRelease = _OnRelease.toLeft;
  _DrawerState _drawerState = _DrawerState.Closed;
  late double dragOffset;

  void _listener(AnimationStatus status) {
    print('STATUS CHANGED : $status');
    if (status == AnimationStatus.completed) {
      setState(() {
        isAnimating = false;
        _drawerState = _DrawerState.Opened;
        onRelease = _OnRelease.toRight;
      });
    }
    if (status == AnimationStatus.dismissed) {
      setState(() {
        isAnimating = false;
        _drawerState = _DrawerState.Closed;
        onRelease = _OnRelease.toLeft;
      });
    }
    if (status == AnimationStatus.forward ||
        status == AnimationStatus.reverse) {
      setState(() {
        isAnimating = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      lowerBound: 0,
      upperBound: 1,
      duration: widget.duration ?? Duration(milliseconds: 200),
      vsync: this,
    );

    animation = Tween<double>(begin: 0, end: 1).animate(controller)
      ..addStatusListener(_listener);

    scaleAnimation = Tween<double>(begin: 0.95, end: 1).animate(controller);
    _initControllerIfExist();
  }

  void _initControllerIfExist() {
    final drawerController = widget.controller;
    if (drawerController != null) {
      drawerController.openDrawer = openDrawer;
      drawerController.closeDrawer = closeDrawer;
      drawerController.toggle = toggle;
    }
  }

  @override
  void dispose() async {
    super.dispose();
    animation.removeStatusListener(_listener);
    controller.dispose();
  }

  void toggle() {
    if (controller.isAnimating) return;
    _drawerState == _DrawerState.Closed
        ? controller.forward()
        : controller.reverse();
  }

  void closeDrawer() {
    if (controller.isAnimating) return;
    if (_drawerState == _DrawerState.Opened) controller.reverse();
  }

  void openDrawer() {
    if (controller.isAnimating) return;
    if (_drawerState == _DrawerState.Closed) controller.forward();
  }

  void _onHorizontalDragStart(DragStartDetails details) {
    var progress = animation.value;
    // drawer ile page'i ayiran cizginin x koordinati
    var leftX = (widget.drawerWidth) * (progress / 1.0);
    var x = details.globalPosition.dx;
    dragOffset = x - leftX;

    print(x);
    print('dragOffset = $dragOffset');
  }

  void _onHorizontalDragUpdate(DragUpdateDetails details) {
    print(details.delta.dx);

    var x = details.globalPosition.dx;

    controller.value = (x - dragOffset) / (widget.drawerWidth);
    // print(
    // 'x: $x    dragOffset: $dragOffset      controller.value = ${controller.value}');
    // controller.value * widget.drawerWidth  ve hizi kullanabilirim x yerine
    if (controller.value * widget.drawerWidth < widget.drawerWidth / 2) {
      print('toLeft');
      onRelease = _OnRelease.toLeft;
    } else {
      print('toRight');

      onRelease = _OnRelease.toRight;
    }
  }

  void _onHorizontalDragEnd(DragEndDetails details) {
    if (onRelease == _OnRelease.toLeft) {
      controller.reverse();
    } else {
      controller.forward();
    }
    print('onHorizontalDragEnd');
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _wrappedDrawer,
        _wrappedPage,
        _slideHandle,
      ],
    );
  }

  Widget get _wrappedPage => GestureDetector(
        onTap: _drawerState == _DrawerState.Opened ? () => closeDrawer() : null,
        child: AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            final translateX = (animation.value / 1 * widget.drawerWidth);

            return Transform(
              alignment: Alignment.centerLeft,
              transform: Matrix4.identity()..translate(translateX, 0),
              child: AbsorbPointer(
                absorbing: isAnimating || _drawerState == _DrawerState.Opened,
                child: child,
              ),
            );
          },
          child: widget.page,
        ),
        // ),
      );

  Widget get _wrappedDrawer => Container(
        width: widget.drawerWidth,
        color: widget.drawerColor,
        child: AnimatedBuilder(
          animation: scaleAnimation,
          builder: (context, child) => Container(
            transform: Matrix4.identity()..scale(scaleAnimation.value),
            child: child,
          ),
          child: widget.drawer,
        ),
      );

  Widget get _slideHandle => AnimatedBuilder(
        animation: animation,
        builder: (context, child) => Positioned(
          left: animation.value * widget.drawerWidth,
          bottom: 0,
          top: 150,
          width: _drawerState == _DrawerState.Opened
              ? MediaQuery.of(context).size.width -
                  (animation.value * widget.drawerWidth)
              : widget.dragWidth,
          child: GestureDetector(
            onTap: _drawerState == _DrawerState.Opened
                ? () => closeDrawer()
                : null,
            onHorizontalDragStart: _onHorizontalDragStart,
            onHorizontalDragUpdate: _onHorizontalDragUpdate,
            onHorizontalDragEnd: _onHorizontalDragEnd,
            child: Container(
              color: Colors.red,
            ),
          ),
        ),
      );
}

    










// AllowMultipleHorizontalDragGestureDetector(
        //   behaviour: HitTestBehavior.opaque,
        //   // behaviour: isDrawerSlide
        //   //     ? HitTestBehavior.opaque
        //   //     : HitTestBehavior.translucent,
        //   // behaviour: isAnimating
        //   //     ? HitTestBehavior.opaque
        //   //     : HitTestBehavior.translucent,
        //   // behaviour: HitTestBehavior.translucent,
        //   onHorizontalDragStart: (details) {
        //     var progress = animation.value;
        //     // print(progress);
        //     // drawer ile page'i ayiran cizginin x koordinati
        //     var leftX = (widget.drawerWidth) * (progress / 1.0);
        //     var x = details.globalPosition.dx;
        //     dragOffset = x - leftX;
        //     if (dragOffset < 35) {
        //       setState(() {
        //         isDrawerSlide = true;
        //       });
        //     }
        //     print(x);
        //     print('dragOffset = $dragOffset');

        //     // if (_drawerState == _DrawerState.Opened) {
        //     //   trackHorizontalDrag = true;
        //     //   return;
        //     // }

        //     // trackHorizontalDrag = true;
        //     print('onHorizontalDragStart');
        //     // if (details.globalPosition.dx < width * 0.15) {
        //     //   trackHorizontalDrag = true;
        //     // } else {
        //     //   trackHorizontalDrag = false;
        //     // }
        //   },
        //   onHorizontalDragUpdate: (details) {
        //     // if (!trackHorizontalDrag) {
        //     //   print('2');
        //     //   return;
        //     // }
        //     if (_drawerState == _DrawerState.Closed &&
        //         (dragOffset > 35 || dragOffset < 0)) {
        //       return;
        //     }
        //     var x = details.globalPosition.dx;

        //     controller.value = (x - dragOffset) / (widget.drawerWidth);
        //     // print(
        //     //     'x: $x    dragOffset: $dragOffset      controller.value = ${controller.value}');
        //     // print('controller.value = ${controller.value} ');
        //     // print('scale value: ${scaleAnimation.value}');
        //     // controller.value * widget.drawerWidth  ve hizi kullanabilirim x yerine
        //     if (controller.value * widget.drawerWidth <
        //         widget.drawerWidth / 2) {
        //       onRelease = _OnRelease.toLeft;
        //     } else {
        //       onRelease = _OnRelease.toRight;
        //     }
        //   },
        //   onHorizontalDragEnd: (details) {
        //     if (onRelease == _OnRelease.toLeft) {
        //       controller.reverse();
        //     } else {
        //       controller.forward();
        //     }
        //     // trackHorizontalDrag = false;
        //     print('onHorizontalDragEnd');
        //   },
        // child: