import 'dart:math';

import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';
import '../../core/reusable/app_header.dart';
import '../../core/size_config.dart';

const _kBarHeight = 15.0;

class TypingIndicator extends StatefulWidget {
  final bool showIndicator;
  final Color bubbleColor;
  final String text;
  final Color flashingCircleDarkColor;
  final Color flashingCircleBrightColor;
  const TypingIndicator({
    Key? key,
    this.showIndicator = false,
    this.bubbleColor = const Color(0xFF646b7f),
    required this.text,
    this.flashingCircleDarkColor = const Color(0xFF333333),
    this.flashingCircleBrightColor = const Color(0xFFaec1dd),
  }) : super(key: key);
  @override
  _TypingIndicatorState createState() => _TypingIndicatorState();
}

class _TypingIndicatorState extends State<TypingIndicator>
    with TickerProviderStateMixin {
  late AnimationController _appearanceController;
  late AnimationController _repeatingController;

  late Animation<double> _indicatorSpaceAnimation;
  final List<Interval> _dotIntervals = const [
    Interval(0.25, 0.8),
    Interval(0.35, 0.9),
    Interval(0.45, 1.0),
  ];
  @override
  void initState() {
    super.initState();
    _appearanceController = AnimationController(
      vsync: this,
    );
    _indicatorSpaceAnimation = CurvedAnimation(
      parent: _appearanceController,
      curve: const Interval(0.0, 0.4, curve: Curves.easeOut),
      reverseCurve: const Interval(0.0, 1.0, curve: Curves.easeOut),
    ).drive(Tween<double>(
      begin: 0.0,
      end: _kBarHeight,
    ));
    _repeatingController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    if (widget.showIndicator) {
      _showIndicator();
    }
  }

  @override
  void dispose() {
    _appearanceController.dispose();
    _repeatingController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(TypingIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.showIndicator != oldWidget.showIndicator) {
      if (widget.showIndicator) {
        _showIndicator();
      } else {
        _hideIndicator();
      }
    }
  }

  void _showIndicator() {
    _appearanceController
      ..duration = const Duration(milliseconds: 750)
      ..forward();
    _repeatingController.repeat();
  }

  void _hideIndicator() {
    _appearanceController
      ..duration = const Duration(milliseconds: 150)
      ..reverse();
    _repeatingController.stop();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _indicatorSpaceAnimation,
      builder: (context, child) {
        return Container(
          color: AppColors.lightBlack,
          height: _indicatorSpaceAnimation.value,
          width: double.infinity,
          child: Row(
            children: [
              SizedBox(width: SizeConfig.screenWidthPercentage(2)),
              _buildFlashingCircle(0),
              _buildFlashingCircle(1),
              _buildFlashingCircle(2),
              SizedBox(width: SizeConfig.screenWidthPercentage(2)),
              child!,
            ],
          ),
        );
      },
      child: AppHeaderText(
        widget.text,
        fontSizeFactor: 0.6,
        color: AppColors.iron,
        fontWeightDelta: 2,
      ),
    );
  }

  Widget _buildFlashingCircle(int index) {
    return AnimatedBuilder(
      animation: _repeatingController,
      builder: (context, child) {
        final circleFlashPercent =
            _dotIntervals[index].transform(_repeatingController.value);
        final circleColorPercent = sin(pi * circleFlashPercent);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: Container(
            width: _kBarHeight / 2,
            height: _kBarHeight / 2,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.lerp(widget.flashingCircleDarkColor,
                  widget.flashingCircleBrightColor, circleColorPercent),
            ),
          ),
        );
      },
    );
  }
}
