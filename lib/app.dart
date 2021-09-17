import 'package:flutter/material.dart';
import 'package:reddit_clone/injection.dart';

import 'app_router.gr.dart';
import 'theme.dart';
import 'utility/app_logger.dart';

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final _appRouter = getIt<AppRouter>();
    // AutoTabsRouter()
    log.wtf('MYAPP BUILD');

    return MaterialApp.router(
      theme: theme(context),
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
