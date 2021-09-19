import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:reddit_clone/utility/log_dispose.dart';
import 'package:reddit_clone/utility/log_init.dart';

class LoadingIndicator extends StatefulWidget {
  final double arcLength;
  final Color color;
  final Duration period;
  final double arcWidth;
  final double width;
  final double maxArcLength;
  final double height;
  final double centeredCircleRadius;
  final double arcDotRadius;

  const LoadingIndicator({
    Key? key,
    required this.arcLength,
    required this.color,
    required this.period,
    required this.width,
    required this.height,
    this.maxArcLength = math.pi / 3,
    this.centeredCircleRadius = 5,
    this.arcDotRadius = 4,
    this.arcWidth = 2,
  }) : super(key: key);

  @override
  State<LoadingIndicator> createState() => _LoadingIndicatorState();
}

class _LoadingIndicatorState extends State<LoadingIndicator>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    logInit(LoadingIndicator);
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.period);
    _animation = Tween(begin: -math.pi, end: math.pi).animate(_controller);
    _controller.addStatusListener(_animationStatusListener);
    _controller.forward();
  }

  _animationStatusListener(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      _controller.repeat();
    } else if (status == AnimationStatus.dismissed) {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    logDispose(LoadingIndicator);
    _controller.removeStatusListener(_animationStatusListener);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return CustomPaint(
          painter: LoadingPainter(
            radians: _animation.value,
            color: widget.color,
            arcLength: widget.arcLength,
            centeredCircleRadius: widget.centeredCircleRadius,
            arcDotRadius: widget.arcDotRadius,
            arcWidth: widget.arcWidth,
            height: widget.height,
            maxArchLength: widget.maxArcLength,
            width: widget.width,
          ),
          child: SizedBox(
            height: widget.height,
            width: widget.width,
          ),
        );
      },
    );
  }
}

class LoadingPainter extends CustomPainter {
  final double arcDotRadius;
  final double arcLength;
  final double? maxArchLength;
  final double arcWidth;
  final double centeredCircleRadius;
  final double radians;
  final double width;
  final double height;
  // final
  final Color color;

  late final Offset circleCenter;
  late final Paint filledPaint;
  late final Rect rectangle;
  late final Paint arcPaint;

  LoadingPainter({
    required this.radians,
    required double arcLength,
    required this.color,
    required this.centeredCircleRadius,
    required this.arcDotRadius,
    required this.width,
    required this.height,
    this.maxArchLength,
    required this.arcWidth,
  }) : arcLength = math.min(arcLength, maxArchLength ?? math.pi) {
    print(arcLength);
    filledPaint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    arcPaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = arcWidth;

    rectangle = Rect.fromLTRB(0, 0, width, height);
    // rectangle.
    circleCenter = Offset(rectangle.center.dx, rectangle.center.dy);
  }

  @override
  void paint(Canvas canvas, Size size) {
    // print(circleCenter);
    final firstStartAngle = (-math.pi / 2) - radians;
    final secondStartAngle = (math.pi / 2) - radians;

    // final sweepAngle = math.pi / 5;
    final sweepAngle = arcLength;
    const useCenter = false;
    canvas.drawArc(rectangle, firstStartAngle, sweepAngle, useCenter, arcPaint);
    canvas.drawArc(
        rectangle, secondStartAngle, sweepAngle, useCenter, arcPaint);
    _drawCenteredFilledCircle(canvas);
    _drawArcStartPoint(canvas, firstStartAngle);
    _drawArcStartPoint(canvas, secondStartAngle);
  }

  _drawArcStartPoint(Canvas canvas, double angle) {
    final offset = Offset(
      circleCenter.dx + (rectangle.width / 2) * math.cos(angle),
      circleCenter.dy + (rectangle.height / 2) * math.sin(angle),
    );
    canvas.drawCircle(offset, arcDotRadius, filledPaint);
  }

  _drawCenteredFilledCircle(Canvas canvas) {
    canvas.drawCircle(circleCenter, centeredCircleRadius, filledPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
