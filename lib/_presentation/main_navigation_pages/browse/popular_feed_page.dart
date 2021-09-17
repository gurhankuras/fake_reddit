import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_clone/_presentation/core/reusable/app_header.dart';
import 'package:reddit_clone/_presentation/feed_page.dart';
import 'package:reddit_clone/_presentation/main_navigation_pages/browse/all_feed_page.dart';
import 'package:reddit_clone/application/home_tab_page/feed_bloc.dart';
import 'package:reddit_clone/injection.dart';

class PopularFeedPage extends StatelessWidget implements AutoRouteWrapper {
  const PopularFeedPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FeedBloc>()..add(FeedEvent.fetchingStarted()),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: plainCenterAppbar('Popular', context),
      body: FeedBody(),
    );
  }
}

AppBar plainCenterAppbar(String title, BuildContext context) {
  return AppBar(
    leading: BackButton(
      color: Colors.white,
      onPressed: () => AutoRouter.of(context).pop(),
    ),
    centerTitle: true,
    title: AppHeaderText(
      title,
      fontSizeFactor: 0.75,
    ),
  );
}
