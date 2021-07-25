import 'package:flutter/material.dart';

import '../../colors.dart';

class Options extends StatelessWidget {
  const Options({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerItems = drawerOptions;

    return Scrollbar(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: drawerItems.length,
        itemBuilder: (context, index) => DrawerOption(item: drawerItems[index]),
      ),
    );
  }

  List<DrawerItem> get drawerOptions => [
        DrawerItem(
          title: 'My Profile',
          icon: Icons.person,
        ),
        DrawerItem(
          title: 'Create a community',
          icon: Icons.face_retouching_natural,
        ),
        DrawerItem(
          title: 'Reddit Coins',
          subtitle: '0 coins',
          icon: Icons.money_off_csred,
        ),
        DrawerItem(
          title: 'Reddit Premium',
          subtitle: 'Ad-free browsing',
          icon: Icons.shield,
        ),
        DrawerItem(
          title: 'Saved',
          icon: Icons.collections_bookmark,
        ),
        DrawerItem(
          title: 'History',
          icon: Icons.history,
        ),
        DrawerItem(
          title: 'Pending Posts',
          icon: Icons.pending,
        ),
        DrawerItem(
          title: 'Drafts',
          icon: Icons.drafts,
        )
      ];
}

class DrawerOption extends StatelessWidget {
  final DrawerItem item;
  const DrawerOption({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        // TODO:
      },
      horizontalTitleGap: 0,
      title: Text(
        item.title,
        style: const TextStyle(color: Colors.white),
      ),
      leading: Icon(
        item.icon,
        color: Theme.of(context).iconTheme.color,
      ),
      subtitle: item.subtitle != null
          ? Text(
              item.subtitle!,
              style: const TextStyle(color: AppColors.moreLightGrey),
            )
          : null,
    );
  }
}

class DrawerItem {
  final String title;
  final IconData icon;
  final String? subtitle;

  DrawerItem({
    required this.title,
    required this.icon,
    this.subtitle,
  });
}
