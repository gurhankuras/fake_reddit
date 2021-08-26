import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/colors.dart';

class AppButton extends StatelessWidget {
  final IconData? icon;
  final EdgeInsets? padding;
  final VoidCallback onTap;
  final bool active;
  // final Widget text;
  final String text;
  final TextStyle? textStyle;
  final bool isLoading;

  const AppButton({
    Key? key,
    this.icon,
    this.padding,
    required this.onTap,
    this.active = true,
    required this.text,
    this.textStyle,
    this.isLoading = false,
  }) : super(key: key);

  const AppButton.icon({
    Key? key,
    required this.text,
    required this.icon,
    this.padding,
    required this.onTap,
    this.active = true,
    this.textStyle,
    this.isLoading = false,
  }) : super(key: key);

  bool get isActive => (active && !isLoading);

  @override
  Widget build(BuildContext context) {
    final buttonGradient = isActive
        ? const LinearGradient(
            colors: [AppColors.red, AppColors.orange],
          )
        : LinearGradient(
            colors: [
              AppColors.red.withOpacity(0.5),
              AppColors.orange.withOpacity(0.5)
            ],
          );
    final useStyle = textStyle ??
        Theme.of(context)
            .textTheme
            .bodyText1
            ?.copyWith(fontWeight: FontWeight.w800);

    final style = isActive
        ? useStyle
        : useStyle?.copyWith(color: useStyle.color?.withOpacity(0.6));

    return GestureDetector(
      onTap: isActive ? onTap : null,
      child: LayoutBuilder(
        builder: (context, constraints) => Container(
          width: constraints.maxWidth * 0.80,
          padding: padding ?? const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: buttonGradient),
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
              isLoading
                  ? const SizedBox(
                      width: 15, height: 15, child: CircularProgressIndicator())
                  : Text(text, style: style),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
