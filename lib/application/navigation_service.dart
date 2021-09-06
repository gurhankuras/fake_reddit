import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_clone/injection.dart';

// Navigator.of(context).pushReplacementNamed(Routes.mainPage),

@Singleton()
class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey =
      getIt<GlobalKey<NavigatorState>>();

  Future<dynamic> navigateTo(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState!
        .pushNamed(routeName, arguments: arguments);
  }

  void replaceAndNavigateTo(String routeName) {
    navigatorKey.currentState!.pushReplacementNamed(routeName);
  }

  void goBack() {
    return navigatorKey.currentState!.pop();
  }
}
