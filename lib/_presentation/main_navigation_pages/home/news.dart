import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../injection.dart';
import '../../../utility/app_logger.dart';
import '../../core/scroll_controllers.dart';
import '../../feed/feed_page.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> with AutomaticKeepAliveClientMixin {
  late final RefreshController _refreshController;
  late final ScrollController _scrollController;

  @override
  void initState() {
    log.wtf('News init');
    final scrollManager = getIt<HomeControllerManager>();
    _scrollController =
        scrollManager.getScrollController(HomeScrollersEnum.news);
    _refreshController =
        scrollManager.getRefreshController(HomeScrollersEnum.news);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _refreshController.dispose();
    log.wtf('News disposed');

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return FeedBody(
      refreshController: _refreshController,
      scrollController: _scrollController,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
