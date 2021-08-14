import 'package:flutter/material.dart';
import '../app/colors.dart';

class BaseAppChip extends StatefulWidget {
  final void Function(bool tagged) onTagged;
  final Color taggedColor;
  final Color untaggedColor;
  final String text;
  final Widget taggedIcon;
  final Widget untaggedIcon;

  const BaseAppChip({
    Key? key,
    required this.onTagged,
    required this.taggedColor,
    required this.untaggedColor,
    required this.text,
    required this.taggedIcon,
    required this.untaggedIcon,
  }) : super(key: key);

  @override
  _BaseAppChipState createState() => _BaseAppChipState();
}

class _BaseAppChipState extends State<BaseAppChip> {
  bool tagged = false;

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      elevation: 8.0,
      avatar: tagged ? widget.taggedIcon : widget.untaggedIcon,
      label: Text(
        widget.text,
        style: Theme.of(context).textTheme.bodyText1?.apply(
              fontSizeFactor: 0.9,
              color: tagged ? AppColors.black : AppColors.moreLightGrey,
            ),
      ),
      onPressed: () {
        setState(() {
          tagged = !tagged;
        });
        widget.onTagged.call(tagged);
      },
      backgroundColor: tagged ? widget.taggedColor : widget.untaggedColor,
    );
  }
}
