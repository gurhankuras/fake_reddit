import 'package:flutter/material.dart';

class FilledCircleIcon extends StatelessWidget {
  const FilledCircleIcon({
    Key? key,
    required this.selectedColor,
    required this.unselectedColor,
    required this.selected,
    required this.icon,
    this.padding,
  }) : super(key: key);

  final Widget icon;
  final bool selected;
  final Color selectedColor;
  final Color unselectedColor;
  final EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: selected ? selectedColor : unselectedColor,
        shape: BoxShape.circle,
      ),
      child: icon,
    );
  }
}
