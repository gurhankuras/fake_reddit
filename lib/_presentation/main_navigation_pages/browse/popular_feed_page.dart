import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/feed/feed_bloc.dart';
import '../../../injection.dart';
import '../../core/reusable/app_header.dart';
import '../../feed/feed_page.dart';

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
    leading: const AutoBackButton(),
    centerTitle: true,
    title: AppHeaderText(
      title,
      fontSizeFactor: 0.75,
    ),
  );
}
