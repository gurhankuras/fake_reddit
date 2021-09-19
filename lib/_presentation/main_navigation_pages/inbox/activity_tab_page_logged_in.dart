import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../../application/inbox/inbox_activities/inbox_activities_bloc.dart';
import '../../../domain/inbox/activity.dart';
import '../../core/constants/assets.dart';
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
    return BlocBuilder<InboxActivitiesBloc, InboxActivitiesState>(
      builder: (context, state) {
        if (state.loading || state.failed) {
          return SingleChildScrollView(
            physics: UIConstants.physics,
            child: Center(
              child: state.loading
                  ? CircularProgressIndicator()
                  : state.failed
                      ? Center(
                          child: Text('Failed'),
                        )
                      : SizedBox.shrink(),
            ),
          );
        }

        final activities = state.activities;
        return SmartRefresher(
          enablePullDown: true,
          header: RefresherHeader(),
          physics: UIConstants.physics,
          controller: _refreshController,
          onRefresh: () async {
            await Future.delayed(Duration(seconds: 2));
            print('refresh');
            _refreshController.refreshCompleted();
          },
          child: ListView.builder(
            physics: UIConstants.physics,
            itemBuilder: (context, index) {
              final activity = activities[index];
              return ActivityNotificationTile(
                key: ValueKey(activity.id),
                activity: activity,
              );
            },
            itemCount: activities.length,
          ),
        );
      },
    );
    // );
  }
}

class ActivityNotificationTile extends StatelessWidget {
  final Activity activity;
  const ActivityNotificationTile({
    Key? key,
    required this.activity,
  }) : super(key: key);

  String get toFormattedDateText {
    final date = DateTime.tryParse(activity.createdAt);
    return date != null ? ' • ${timeago.format(date, locale: 'en_short')}' : '';
  }

  @override
  Widget build(BuildContext context) {
    return CustomAppTile(
      alignment: CrossAxisAlignment.start,
      leadingWidthDiff: 12,
      leading: buildLeading(),
      onTap: () {
        context
            .read<InboxActivitiesBloc>()
            .add(InboxActivitiesEvent.activityViewed(activity.id));
      },
      // getIt<NavigationService>()
      //     .navigateTo(Routes.singlePostPage, arguments: {

      title: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: AppHeaderText(
              activity.title,
              fontSizeFactor: 0.7,
            ),
          ),
          AppHeaderText(
            toFormattedDateText,
            fontSizeFactor: 0.6,
            color: AppColors.moreLightGrey,
            fontWeightDelta: -1,
          ),
        ],
      ),
      subtitle: AppHeaderText(
        activity.text,
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
            backgroundImage: NetworkImage(activity.subreddit.avatar),
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
