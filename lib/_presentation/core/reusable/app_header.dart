import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  final String text;
  final double fontSizeFactor;
  final int fontWeightDelta;
  final Color color;
  const AppHeader(
    this.text, {
    Key? key,
    this.fontSizeFactor = 1.15,
    this.fontWeightDelta = 3,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline6?.apply(
            fontSizeFactor: fontSizeFactor,
            fontWeightDelta: fontWeightDelta,
            color: color,
          ),
    );
  }
}
