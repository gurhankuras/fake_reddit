import 'package:flutter/material.dart';

import 'browse_page.dart';
import 'empty_page.dart';

class BrowseNavigator extends StatefulWidget {
  @override
  _BrowseNavigatorState createState() => _BrowseNavigatorState();
}

class _BrowseNavigatorState extends State<BrowseNavigator> {
  final navigatorKey = GlobalKey<NavigatorState>();

  void _navigateTo(String route) {
    navigatorKey.currentState?.pushNamed(route);
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            if (settings.name == '/sanane') {
              return EmptyPage();
            }
            return BrowsePage(navigationHandler: _navigateTo);
          },
        );
      },
    );
  }
}
