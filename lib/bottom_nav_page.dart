import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:reddit_clone/_presentation/main_navigation_pages/browse/browse_navigator.dart';
import 'package:reddit_clone/_presentation/main_navigation_pages/home/home_navigator.dart';
import 'package:reddit_clone/application/chat/chat_rooms/chat_rooms_bloc.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '_presentation/main_navigation_pages/chat/chat_nav_page.dart';
import '_presentation/core/app/drawer/app_drawer.dart';
import '_presentation/core/constants/colors.dart';
import '_presentation/core/constants/env.dart';
import '_presentation/core/modal_bottom_sheet/sign_in_modal_bottom_sheet.dart';
import '_presentation/core/reusable/scaled_drawer.dart';
import '_presentation/core/scroll_controllers.dart';
import '_presentation/core/size_config.dart';
import '_presentation/main_navigation_pages/home/home_vm.dart';
import '_presentation/main_navigation_pages/inbox/inbox_page.dart';
import 'application/auth/auth_bloc.dart';
import 'application/main_page_bloc/main_page_bloc.dart';
import 'application/notification/bloc/notification_bloc.dart';
import '_presentation/main_navigation_pages/home/home_nav_page.dart';
import 'infastructure/notification/push_notification_service.dart';
import 'injection.dart';
import 'routes.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({
    Key? key,
  }) : super(key: key);

  @override
  BottomNavPageState createState() => BottomNavPageState();
}

class BottomNavPageState extends State<BottomNavPage> {
  late final PageController _pageController;
  late final MyDrawerController drawerController;
  int index = 0;

  @override
  void initState() {
    _pageController = PageController();
    drawerController = context.read<MyDrawerController>();

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) async {
      await getIt<PushNotificationService>().initiliase();
    });

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return BlocListener<AuthBloc, AuthState>(
      listener: popWhenUnauthenticated,
      child: ScaledDrawer(
        curve: Curves.easeInOut,
        controller: drawerController,
        drawer: AppDrawer(page: widget),
        drawerColor: AppColors.black,
        drawerWidth: MediaQuery.of(context).size.width * 0.7,
        page: Scaffold(
          backgroundColor: AppColors.lightBlack,
          bottomNavigationBar: Consumer<HomeVM>(
            builder: (context, value, child) => BottomNavigationBar(
              items: mapNavigationItems(),
              currentIndex: value.currentPage,
              onTap: (index) => navigateByIndex(index, value),
            ),
          ),
          body: buildPage(),
        ),
      ),
    );
  }

  void popWhenUnauthenticated(BuildContext context, AuthState state) {
    state.maybeMap(
      orElse: () => null,
      unauthenticated: (value) => Navigator.of(context).pushNamedAndRemoveUntil(
        Routes.bottomNavPage,
        (route) => false,
      ),
    );
  }

  List<BottomNavigationBarItem> mapNavigationItems() {
    return navigationItems
        .map(
          (item) => BottomNavigationBarItem(
            icon: item.index == index ? item.selectedIcon : item.unselectedIcon,
            label: '',
          ),
        )
        .toList();
  }

  void navigateByIndex(int currentIndex, HomeVM bottomNavigationViewModel) {
    if (currentIndex == 2) {
      context.read<AuthBloc>().state.maybeMap(
            authenticated: (_) => navigateToSearchPage(),
            orElse: () => showSignUpSheet(context),
          );
      return;
    } else if (currentIndex != bottomNavigationViewModel.currentPage) {
      _pageController.jumpToPage(currentIndex);
      bottomNavigationViewModel.changePage(currentIndex);
    } else if (bottomNavigationViewModel.currentPage == 0) {
      final scrollControllers = context.read<HomeControllerManager>();
      scrollControllers.scrollToStartOrRefresh();
    }
  }

  void navigateToSearchPage() {
    Navigator.of(context).pushNamed(Routes.postFeedSearchPage,
        arguments: context.read<MainPageBloc>());
  }

  List<NavigationItem> get navigationItems => <NavigationItem>[
        NavigationItem(
          index: 0,
          unselectedIcon: Icon(Icons.home_outlined),
          selectedIcon: Icon(Icons.home_rounded),
        ),
        NavigationItem(
          index: 1,
          selectedIcon: Icon(Icons.grid_view_rounded),
          unselectedIcon: Icon(Icons.grid_view_outlined),
        ),
        NavigationItem(
          index: 2,
          selectedIcon: Icon(Icons.add, size: 36),
          unselectedIcon: Icon(Icons.add_outlined, size: 36),
        ),
        NavigationItem(
            index: 3,
            selectedIcon: Icon(FontAwesomeIcons.solidCommentDots),
            unselectedIcon:
                BlocSelector<NotificationBloc, NotificationState, int>(
              selector: (state) {
                return state.unreadMessageCount;
              },
              builder: (context, unreadMessageCount) {
                if (unreadMessageCount == 0) {
                  return Icon(FontAwesomeIcons.commentDots);
                } else {
                  return Badge(
                    badgeContent: Text(unreadMessageCount.toString()),
                    child: Icon(FontAwesomeIcons.commentDots),
                    position: BadgePosition.topEnd(end: -10, top: -10),
                  );
                }
              },
            )),
        NavigationItem(
            index: 4,
            selectedIcon: Icon(FontAwesomeIcons.solidBell),
            unselectedIcon: BlocBuilder<NotificationBloc, NotificationState>(
              buildWhen: (previous, current) =>
                  (previous.inboxUnreadMessageCount +
                      previous.unreadActivitiesCount) !=
                  (current.inboxUnreadMessageCount +
                      current.unreadActivitiesCount),
              builder: (context, state) {
                final total_notificaion_count =
                    state.inboxUnreadMessageCount + state.unreadActivitiesCount;
                // if (total_notificaion_count == 0) {
                //   return Icon(FontAwesomeIcons.bell);
                // } else {
                // return
                //  Badge(
                //   badgeContent: Text(total_notificaion_count > 99
                //       ? '+99'
                //       : total_notificaion_count.toString()),
                //   showBadge: total_notificaion_count != 0,
                //   child: Icon(FontAwesomeIcons.bell),

                //   // shape: BadgeShape.square,
                //   // padding: EdgeInsets.zero,
                //   // padding: ,

                //   toAnimate: false,
                //   // borderRadius: BorderRadius.circular(50),
                //   position: BadgePosition.topEnd(end: -10, top: -8),
                // );
                // }

                return Stack(
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    Icon(FontAwesomeIcons.bell),
                    Positioned(
                      right: -10,
                      top: -3,
                      child: Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        constraints: BoxConstraints(
                          minWidth: 12,
                          minHeight: 12,
                        ),
                        child: Center(
                          child: Text(
                            '10',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            )),
      ];

  Widget buildPage() {
    return PageView(
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: tabPages,
    );
  }

  List<Widget> get tabPages => <Widget>[
        // Provider.value(value:
        Provider.value(
          value: context.read<HomeControllerManager>(),
          child: const HomeNavigator(),
        ),
        // ),
        BrowseNavigator(),
        const Center(
          child: Text(
            'Index 3: Settings',
            style: TextStyle(color: Colors.white),
          ),
        ),

        BlocProvider(
          create: (context) =>
              getIt<ChatRoomsBloc>()..add(ChatRoomsEvent.fetchingStarted()),
          child: ChatNavPage(),
        ),
        InboxPage()
      ];
}
