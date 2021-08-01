import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'colors.dart';

class AppButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final EdgeInsets? padding;

  const AppButton({
    Key? key,
    required this.text,
    this.icon,
    this.padding,
  }) : super(key: key);

  const AppButton.icon({
    Key? key,
    required this.text,
    required this.icon,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        width: constraints.maxWidth * 0.80,
        padding: padding ?? const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [AppColors.red, AppColors.orange],
          ),
        ),
        child: Row(
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: FaIcon(
                  icon,
                  size: 14,
                ),
              ),
            const Spacer(),
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontWeight: FontWeight.w800),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
