import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_clone/_presentation/feed_page.dart';
import 'package:reddit_clone/_presentation/main_navigation_pages/browse/popular_feed_page.dart';
import 'package:reddit_clone/application/home_tab_page/feed_bloc.dart';
import 'package:reddit_clone/injection.dart';

class AllFeedPage extends StatelessWidget implements AutoRouteWrapper {
  const AllFeedPage({Key? key}) : super(key: key);

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
      appBar: plainCenterAppbar('All', context),
      body: FeedBody(),
    );
  }
}
