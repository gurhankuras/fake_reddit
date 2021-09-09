import 'package:flutter/material.dart';
import 'package:reddit_clone/_presentation/feed_page.dart';
import 'package:reddit_clone/_presentation/main_navigation_pages/browse/popular_feed_page.dart';

class AllFeedPage extends StatelessWidget {
  const AllFeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: plainCenterAppbar('All'),
      body: FeedBody(),
    );
  }
}
