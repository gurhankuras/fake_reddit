// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:reddit_clone/_presentation/main_navigation_pages/browse/all_feed_page.dart';
// import 'package:reddit_clone/_presentation/main_navigation_pages/browse/popular_feed_page.dart';
// import 'package:reddit_clone/application/home_tab_page/feed_bloc.dart';
// import 'package:reddit_clone/injection.dart';

// import 'browse_page.dart';
// import 'empty_page.dart';

// class BrowseNavigator extends StatefulWidget {
//   const BrowseNavigator({Key? key}) : super(key: key);
//   @override
//   _BrowseNavigatorState createState() => _BrowseNavigatorState();
// }

// class _BrowseNavigatorState extends State<BrowseNavigator> {
//   final navigatorKey = GlobalKey<NavigatorState>();

//   void _navigateTo(String route) {
//     navigatorKey.currentState?.pushNamed(route);
//   }

//   @override
//   Widget build(BuildContext context) {
//     // super.build(context);
//     return Navigator(
//       key: navigatorKey,
//       onGenerateRoute: (settings) {
//         return MaterialPageRoute(
//           builder: (context) {
//             switch (settings.name) {
//               case '/sanane':
//                 return EmptyPage();
//               case '/all':
//                 return BlocProvider(
//                   create: (context) =>
//                       getIt<FeedBloc>()..add(FeedEvent.fetchingStarted()),
//                   child: AllFeedPage(),
//                 );
//               case '/popular':
//                 return BlocProvider(
//                   create: (context) =>
//                       getIt<FeedBloc>()..add(FeedEvent.fetchingStarted()),
//                   child: PopularFeedPage(),
//                 );

//               default:
//                 return BrowsePage(navigationHandler: _navigateTo);
//             }
//           },
//         );
//       },
//     );
//   }

//   // @override
//   // bool get wantKeepAlive => true;
// }
