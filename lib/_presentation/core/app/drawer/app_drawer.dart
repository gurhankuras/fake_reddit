import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../settings/settings_panel.dart';
import '../../reusable/scaled_drawer.dart';
import '../../constants/colors.dart';
import 'widgets/options.dart';
import 'widgets/user_info.dart';

class AppDrawer extends StatelessWidget {
  // final VoidCallback closeDrawer;
  final Widget page;
  // final bool isDrawerOpen;
  const AppDrawer({
    Key? key,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // safearea
    return Scaffold(
      body: Column(
        children: [
          const UserInfo(),
          const Expanded(
            child: Options(),
          ),
          // if (isDrawerOpen)
          DecoratedBox(
            decoration: const BoxDecoration(
              color: AppColors.black,
            ),
            child: Material(
              color: Colors.transparent,
              child: DrawerOption(
                onTap: () {
                  context.read<MyDrawerController>().closeDrawer();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SettingsPanelPage(
                        page: page,
                      ),
                      fullscreenDialog: true,
                    ),
                  );
                },
                item: DrawerItem(
                  title: 'Settings',
                  icon: Icons.settings,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
