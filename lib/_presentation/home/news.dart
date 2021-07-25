import 'package:flutter/material.dart';
import 'package:reddit_clone/_presentation/core/app/feed_card.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return const FeedCard();
            },
            childCount: 13,
          ),
        )
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
