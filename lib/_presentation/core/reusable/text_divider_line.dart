import 'package:flutter/material.dart';
import '../constants/colors.dart';

class TextDividerLine extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final double spaceAroundText;
  final double endPointsIndent;
  final Color color;
  const TextDividerLine({
    Key? key,
    required this.text,
    this.textStyle,
    this.spaceAroundText = 15,
    this.endPointsIndent = 20,
    this.color = AppColors.moreLightGrey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            endIndent: spaceAroundText,
            indent: endPointsIndent,
            color: color,
          ),
        ),
        Text(text, style: textStyle),
        Expanded(
          child: Divider(
            endIndent: endPointsIndent,
            indent: spaceAroundText,
            color: color,
          ),
        ),
      ],
    );
  }
}
