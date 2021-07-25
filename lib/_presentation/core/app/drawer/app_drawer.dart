import 'package:flutter/material.dart';

import '../colors.dart';
import 'widgets/options.dart';
import 'widgets/user_info.dart';

class AppDrawer extends StatelessWidget {
  final VoidCallback closeDrawer;
  final bool isDrawerOpen;
  const AppDrawer({
    Key? key,
    required this.closeDrawer,
    required this.isDrawerOpen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // safearea
    return Column(
      children: [
        UserInfo(closeDrawer: closeDrawer),
        const Expanded(
          child: Options(),
        ),
        if (isDrawerOpen)
          DecoratedBox(
            decoration: const BoxDecoration(
              color: AppColors.black,
            ),
            child: Material(
              color: Colors.transparent,
              child: DrawerOption(
                item: DrawerItem(
                  title: 'Settings',
                  icon: Icons.settings,
                ),
              ),
            ),
          )
      ],
    );
  }
}
/*

DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.black,
            ),
            child: DrawerOption(
              item: DrawerItem(
                title: 'Settings',
                icon: Icons.settings,
              ),
            ),
          )
*/
