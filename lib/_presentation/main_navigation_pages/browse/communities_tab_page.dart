import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../utility/log_dispose.dart';
import '../../../utility/log_init.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/ui.dart';
import '../../core/refresh_widgets.dart';
import '../../core/reusable/app_header.dart';
import '../../core/reusable/custom_app_tile.dart';
import '../../core/reusable/filled_circle_icon.dart';
import '../../core/reusable/sliver_divider.dart';
import '../../core/size_config.dart';
import '../../settings/settings_panel.dart';
import 'widgets/visited_community.dart';

class BrowsingInfo {
  final String title;
  final IconData iconData;
  final String subtitle;
  final String route;
  final bool parentNavigator;

  const BrowsingInfo({
    required this.title,
    required this.iconData,
    required this.subtitle,
    required this.route,
    this.parentNavigator = true,
  });
}

final a = [
  BrowsingInfo(
    iconData: Icons.trending_up,
    title: 'Browse Communities',
    subtitle: 'Explore by topic',
    route: '/browse-communities',
    parentNavigator: false,
  ),
  BrowsingInfo(
    iconData: FontAwesomeIcons.moon,
    title: 'Popular',
    subtitle: 'The hottest posts on the internet',
    route: '/main/browse/popular',
  ),
  BrowsingInfo(
    iconData: Icons.arrow_upward,
    title: 'All',
    subtitle: 'Even more top posts on Reddit',
    route: '/main/browse/all',
  ),
  BrowsingInfo(
      iconData: Icons.trending_up,
      title: 'RPAN',
      subtitle: 'Reddit Public Access Network',
      parentNavigator: false,
      route: '/rpan'),
];

class Moderation {
  final String avatar;
  final String name;
  const Moderation({
    required this.avatar,
    required this.name,
  });
}

const moderations = [
  Moderation(
    avatar:
        'https://styles.redditmedia.com/t5_2u8ap/styles/communityIcon_22vj4cspta551.png?width=256&s=b1864a41af049dbe799651bbc6412c72333c550b',
    name: 'r/EnglishLearning',
  ),
  Moderation(
    avatar:
        'https://styles.redditmedia.com/t5_3roz2q/styles/profileIcon_snoo16a6ac4e-84c8-45e1-8930-f1b06266fa7a-headshot.png?width=256&height=256&crop=256:256,smart&s=a1b897b90de646ccf5251c8006d8fc430ea1778d',
    name: 'r/Brilliant_Program232',
  ),
  Moderation(
    avatar:
        'https://styles.redditmedia.com/t5_2u8ap/styles/communityIcon_22vj4cspta551.png?width=256&s=b1864a41af049dbe799651bbc6412c72333c550b',
    name: 'r/Hasasasad',
  ),
];

class CommunitiesTabPage extends StatefulWidget {
  // final void Function(String route) navigationHandler;

  const CommunitiesTabPage({
    Key? key,
    // required this.navigationHandler,
  }) : super(key: key);

  @override
  _CommunitiesTabPageState createState() => _CommunitiesTabPageState();
}

class _CommunitiesTabPageState extends State<CommunitiesTabPage> {
  late final RefreshController _refreshController;

  @override
  void initState() {
    logInit(CommunitiesTabPage);
    super.initState();
    _refreshController = RefreshController();
  }

  @override
  void dispose() {
    logDispose(CommunitiesTabPage);

    super.dispose();
    _refreshController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: true,
      header: RefresherHeader(),
      controller: _refreshController,
      onRefresh: () async {
        await Future.delayed(Duration(seconds: 2));
        _refreshController.refreshCompleted();
      },
      child: CustomScrollView(
        physics: UIConstants.physics,
        slivers: [
          VisitedCommunities(),
          SliverDivider(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final item = a[index];
                return BrowseFeedsTile(
                  onTap: () => AutoRouter.of(context).navigateNamed(item.route),
                  iconData: item.iconData,
                  title: item.title,
                  subtitle: item.subtitle,
                );
              },
              childCount: a.length,
            ),
          ),
          SliverToBoxAdapter(child: SubsectionHeader('MODERATION')),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index == 0) {
                  return CustomAppTile(
                    tileColor: AppColors.lightBlack,
                    leading: Padding(
                      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Icon(
                        Icons.shield,
                        color: AppColors.lightGreen,
                      ),
                    ),
                    title: AppHeaderText(
                      'Mod',
                      fontSizeFactor: 0.68,
                      fontWeightDelta: 0,
                    ),
                  );
                }
                final item = moderations[index - 1];
                return CustomAppTile(
                  tileColor: AppColors.lightBlack,
                  leading: CircleAvatar(
                    radius: 15,
                    backgroundImage: NetworkImage(item.avatar),
                  ),
                  title: AppHeaderText(
                    item.name,
                    fontSizeFactor: 0.68,
                    fontWeightDelta: 0,
                  ),
                );
              },
              childCount: moderations.length + 1,
            ),
          ),
          SliverToBoxAdapter(child: SubsectionHeader('MY COMMUNITIES')),
        ],
      ),
    );
  }
}

class BrowseFeedsTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;
  const BrowseFeedsTile({
    Key? key,
    required this.iconData,
    required this.title,
    required this.subtitle,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAppTile(
      onTap: onTap,
      tileColor: AppColors.lightBlack,
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
    );
  }
}

class VisitedCommunities extends StatelessWidget {
  const VisitedCommunities({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
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
