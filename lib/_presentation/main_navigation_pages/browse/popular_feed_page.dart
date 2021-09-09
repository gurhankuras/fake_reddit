import 'package:flutter/material.dart';
import 'package:reddit_clone/_presentation/core/reusable/app_header.dart';
import 'package:reddit_clone/_presentation/feed_page.dart';

class PopularFeedPage extends StatelessWidget {
  const PopularFeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: plainCenterAppbar('Popular'),
      body: FeedBody(),
    );
  }
}

AppBar plainCenterAppbar(String title) {
  return AppBar(
    centerTitle: true,
    title: AppHeaderText(
      title,
      fontSizeFactor: 0.75,
    ),
  );
}
