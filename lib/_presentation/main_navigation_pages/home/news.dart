import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:reddit_clone/utility/app_logger.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../core/scroll_controllers.dart';
import '../../feed_page.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> with AutomaticKeepAliveClientMixin {
  // late final RefreshController _refreshController;
  // late final ScrollController _scrollController;

  @override
  void initState() {
    log.wtf('News init');
    // final scrollManager = context.read<HomeControllerManager>();
    // _scrollController =
    // scrollManager.getScrollController(HomeScrollersEnum.news);
    // _refreshController =
    // scrollManager.getRefreshController(HomeScrollersEnum.news);
    // _refreshController = RefreshController();
    super.initState();
  }

  @override
  void dispose() {
    // _scrollController.dispose();
    // _refreshController.dispose();
    log.wtf('News disposed');

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
        // Container();
        // FeedBody(
        //   refreshController: _refreshController,
        //   scrollController: _scrollController,
        // );
        FeedBody();
  }

  @override
  bool get wantKeepAlive => true;
}
