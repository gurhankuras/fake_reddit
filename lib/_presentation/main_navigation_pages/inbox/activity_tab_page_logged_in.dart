import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:reddit_clone/_presentation/core/constants/assets.dart';

import '../../../application/navigation_service.dart';
import '../../../domain/core/user.dart';
import '../../../domain/post/post_entry.dart';
import '../../../injection.dart';
import '../../../routes.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/ui.dart';
import '../../core/refresh_widgets.dart';
import '../../core/reusable/app_header.dart';
import '../../core/reusable/custom_app_tile.dart';

class ActivityTabPageLoggedIn extends StatefulWidget {
  const ActivityTabPageLoggedIn({Key? key}) : super(key: key);

  @override
  _ActivityTabPageLoggedInState createState() =>
      _ActivityTabPageLoggedInState();
}

class _ActivityTabPageLoggedInState extends State<ActivityTabPageLoggedIn> {
  late final RefreshController _refreshController;

  @override
  void initState() {
    super.initState();
    _refreshController = RefreshController();
  }

  @override
  void dispose() {
    super.dispose();
    _refreshController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: true,
      header: RefresherHeader(),
      footer: CustomRefresherFooter(),
      physics: UIConstants.physics,
      controller: _refreshController,
      onRefresh: () async {
        await Future.delayed(Duration(seconds: 2));
        _refreshController.refreshCompleted();
      },
      // onLoading: (){

      // },
      child: ListView.builder(
        physics: UIConstants.physics,
        itemBuilder: (context, index) {
          return CustomAppTile(
            alignment: CrossAxisAlignment.start,
            leadingWidthDiff: 12,
            leading: buildLeading(),
            onTap: () => getIt<NavigationService>()
                .navigateTo(Routes.singlePostPage, arguments: {
              'post': PostEntry(
                commentCount: 3,
                bodyText: '',
                contentText: 'HAHAHAH',
                date: '2d',
                id: 'ssss',
                isNFSW: false,
                subreddit: 'r/berserk',
                type: PostType.text,
                upvotes: 10,
                user: User(
                    image:
                        'https://images.unsplash.com/photo-1554570731-63bcddda4dcd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=282&q=80',
                    nickname: 'gurhan'),
              ),
              'comesFromFeedPage': false,
            }),
            title: Row(
              children: [
                AppHeaderText(
                  'Trending on r/TowerOfGod',
                  fontSizeFactor: 0.7,
                ),
                AppHeaderText(
                  ' • 3d',
                  fontSizeFactor: 0.6,
                  color: AppColors.moreLightGrey,
                  fontWeightDelta: -1,
                ),
              ],
            ),
            subtitle: AppHeaderText(
              'Baam2s keep saying he wants to get stronger as fast as possible. Why does baam not use the power of Blue Evil asdasdasd as dasdasd',
              fontSizeFactor: 0.6,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              fontWeightDelta: -1,
              color: AppColors.iron,
            ),
            trailing: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.more_horiz,
                color: AppColors.iron,
                size: 18,
              ),
            ),
            tileColor: AppColors.lightBlack,
          );
        },
        itemCount: 3,
      ),
    );
  }

  Widget buildLeading() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: AppColors.darkgreyBlack,
            ),
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            radius: 17,
            backgroundColor: AppColors.black,
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1488554378835-f7acf46e6c98?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80'),
          ),
        ),
        Positioned(
          bottom: -5,
          right: 0,
          child: Container(
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.black,
              border: Border.all(
                width: 1,
                color: AppColors.darkgreyBlack,
              ),
            ),
            child: SvgPicture.asset(
              Assets.trending_up,
              color: Colors.blue,
              // fit: BoxFit.fitWidth,
            ),
            width: 15,
            height: 15,
          ),
        ),
      ],
    );
  }
}
