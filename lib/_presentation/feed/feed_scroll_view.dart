import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../core/constants/ui.dart';

import '../core/refresh_widgets.dart';

class FeedScrollView extends StatelessWidget {
  final RefreshController refreshController;
  final ScrollController scrollController;
  final List<Widget> slivers;
  final VoidCallback onRefresh;
  final VoidCallback onLoading;
  const FeedScrollView({
    Key? key,
    required this.refreshController,
    required this.scrollController,
    required this.slivers,
    required this.onRefresh,
    required this.onLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: true,
      header: RefresherHeader(),
      footer: CustomRefresherFooter(),
      controller: refreshController,
      onRefresh: onRefresh,
      onLoading: onLoading,
      child: CustomScrollView(
        controller: scrollController,
        slivers: slivers,
        physics: UIConstants.physics,
      ),
    );
  }
}
