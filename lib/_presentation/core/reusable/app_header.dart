import 'package:flutter/material.dart';

class AppHeaderText extends StatelessWidget {
  final String text;
  final double fontSizeFactor;
  final int fontWeightDelta;
  final Color color;
  final int? maxLines;
  final TextOverflow? overflow;
  const AppHeaderText(
    this.text, {
    Key? key,
    this.fontSizeFactor = 1.15,
    this.fontWeightDelta = 3,
    this.color = Colors.white,
    this.maxLines,
    this.overflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      style: Theme.of(context).textTheme.headline6?.apply(
            fontSizeFactor: fontSizeFactor,
            fontWeightDelta: fontWeightDelta,
            color: color,
          ),
    );
  }
}
