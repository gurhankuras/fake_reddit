import 'package:flutter/material.dart';
import '../../core/app/colors.dart';

class SettingsGroup extends StatelessWidget {
  final List<Widget> children;
  const SettingsGroup({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.lightBlack,
      child: Column(
        children: children,
      ),
    );
  }
}
