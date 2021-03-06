import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';
import '../../core/reusable/filled_circle_icon.dart';
import 'create_post_page.dart';

class PostTypeButton extends StatelessWidget {
  final PostTypeData feedType;
  final int index;
  final bool selected;
  final Function(int index) onTap;
  final bool hasTitle;

  const PostTypeButton({
    Key? key,
    required this.feedType,
    required this.index,
    required this.selected,
    required this.onTap,
    this.hasTitle = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        children: [
          FilledCircleIcon(
            selected: selected,
            icon: Icon(feedType.icon),
            selectedColor: Colors.blue[700]!,
            unselectedColor: Colors.transparent,
          ),
          if (hasTitle) SizedBox(height: 5),
          if (hasTitle)
            Text(
              feedType.text,
              style: Theme.of(context).textTheme.caption?.copyWith(
                  color: selected ? Colors.blue[700] : AppColors.iron),
            )
        ],
      ),
    );
  }
}
