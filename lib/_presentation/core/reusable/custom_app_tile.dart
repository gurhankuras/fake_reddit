import 'package:flutter/material.dart';

class CustomAppTile extends StatelessWidget {
  final double leadingWidthDiff;
  final double titleSubtitleGap;
  final Widget title;
  final Widget? subtitle;
  final Widget? leading;
  final VoidCallback? onTap;
  final Color? tileColor;
  final Widget? trailing;
  final EdgeInsets? padding;
  final CrossAxisAlignment alignment;
  const CustomAppTile({
    Key? key,
    this.leadingWidthDiff = 16,
    this.titleSubtitleGap = 4,
    required this.title,
    this.subtitle,
    this.leading,
    this.onTap,
    this.tileColor,
    this.trailing,
    this.padding,
    this.alignment = CrossAxisAlignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: tileColor,
        child: Padding(
          padding: padding ?? const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: alignment,
            children: [
              if (leading != null) leading!,
              if (leading != null) SizedBox(width: leadingWidthDiff),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    title,
                    if (subtitle != null) SizedBox(height: titleSubtitleGap),
                    if (subtitle != null) subtitle!,
                  ],
                ),
              ),
              // Spacer(),
              if (trailing != null) trailing!
            ],
          ),
        ),
      ),
    );
  }
}
