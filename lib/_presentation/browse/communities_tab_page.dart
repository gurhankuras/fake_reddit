import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../core/constants/colors.dart';
import '../core/constants/ui.dart';
import '../core/reusable/app_header.dart';
import '../core/reusable/filled_circle_icon.dart';
import '../core/size_config.dart';
import '../settings/settings_panel.dart';
import 'widgets/visited_community.dart';

class BrowsingInfo {
  final String title;
  final IconData iconData;
  final String subtitle;

  BrowsingInfo({
    required this.title,
    required this.iconData,
    required this.subtitle,
  });
}

final a = [
  BrowsingInfo(
    iconData: Icons.trending_up,
    title: 'Browse Communities',
    subtitle: 'Explore by topic',
  ),
  BrowsingInfo(
    iconData: FontAwesomeIcons.moon,
    title: 'Popular',
    subtitle: 'The hottest posts on the internet',
  ),
  BrowsingInfo(
    iconData: Icons.arrow_upward,
    title: 'All',
    subtitle: 'Even more top posts on Reddit',
  ),
  BrowsingInfo(
    iconData: Icons.trending_up,
    title: 'RPAN',
    subtitle: 'Reddit Public Access Network',
  ),
];

class CommunitiesTabPage extends StatelessWidget {
  final void Function(String route) navigationHandler;

  const CommunitiesTabPage({
    Key? key,
    required this.navigationHandler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: UIConstants.physics,
      slivers: [
        VisitedCommunities(),
        SliverDivider(),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final item = a[index];
              return GestureDetector(
                onTap: () => navigationHandler('/sanane'),
                child: BrowseFeedsTile(
                  iconData: item.iconData,
                  title: item.title,
                  subtitle: item.subtitle,
                ),
              );
            },
            childCount: a.length,
          ),
        ),
        SliverToBoxAdapter(child: SubsectionHeader('MODERATION')),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final item = a[index];
              return ListTile(
                minVerticalPadding: 0,
                horizontalTitleGap: 4,
                dense: true,
                contentPadding: EdgeInsets.only(left: 8.0),
                tileColor: AppColors.lightBlack,
                leading: FilledCircleIcon(
                  selectedColor: AppColors.lightBlack,
                  unselectedColor: AppColors.lightBlack,
                  selected: true,
                  padding: EdgeInsets.all(5),
                  icon: Icon(
                    Icons.shield,
                    color: AppColors.lightGreen,
                    size: 20,
                  ),
                ),
                title: AppHeaderText(
                  'Mod',
                  fontSizeFactor: 0.68,
                  fontWeightDelta: 0,
                ),
                // subtitle: AppHeaderText(
                //   '',
                //   fontSizeFactor: 0.60,
                //   fontWeightDelta: -1,
                //   color: AppColors.moreLightGrey,
                // ),
              );
            },
            childCount: a.length,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final item = a[index];
              return BrowseFeedsTile(
                iconData: item.iconData,
                title: item.title,
                subtitle: item.subtitle,
              );
            },
            childCount: a.length,
          ),
        ),
      ],
    );
  }
}

class SliverDivider extends StatelessWidget {
  const SliverDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: AppColors.lightBlack,
        child: Padding(
          padding: EdgeInsets.only(
            top: SizeConfig.screenWidthPercentage(3),
            bottom: SizeConfig.screenWidthPercentage(2),
          ),
          child: Container(
            width: double.infinity,
            height: 0.7,
            color: AppColors.darkgreyBlack,
          ),
        ),
      ),
    );
  }
}

class BrowseFeedsTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String subtitle;
  const BrowseFeedsTile({
    Key? key,
    required this.iconData,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 0,
      horizontalTitleGap: 4,
      dense: true,
      contentPadding: EdgeInsets.only(left: 8.0),
      tileColor: AppColors.lightBlack,
      leading: FilledCircleIcon(
        selectedColor: AppColors.blue,
        unselectedColor: AppColors.blue,
        selected: true,
        padding: EdgeInsets.all(5),
        icon: Icon(
          iconData,
          color: Colors.white,
          size: 20,
        ),
      ),
      title: AppHeaderText(
        title,
        fontSizeFactor: 0.68,
        fontWeightDelta: 0,
      ),
      subtitle: AppHeaderText(
        subtitle,
        fontSizeFactor: 0.60,
        fontWeightDelta: -1,
        color: AppColors.moreLightGrey,
      ),
    );
  }
}

class VisitedCommunities extends StatelessWidget {
  const VisitedCommunities({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // SliverPadding(
        // padding: const EdgeInsets.all(8.0),
        // sliver:
        SliverToBoxAdapter(
      child: Container(
        color: AppColors.lightBlack,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppHeaderText(
                'Recently visited communities',
                fontSizeFactor: 0.7,
                fontWeightDelta: -1,
              ),
              SizedBox(height: SizeConfig.screenWidthPercentage(2)),
              SizedBox(
                height: 180,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => VisitedCommunity(
                    info: fakeVisitedCommInfo,
                    height: 180,
                    width: 180,
                  ),
                  itemCount: 4,
                  physics: UIConstants.physics,
                ),
              ),
            ],
          ),
        ),
      ),
      // ),
    );
  }
}
