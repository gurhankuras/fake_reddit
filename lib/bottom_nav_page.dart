import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '_presentation/core/app/drawer/app_drawer.dart';
import '_presentation/core/constants/colors.dart';
import '_presentation/core/modal_bottom_sheet/sign_in_modal_bottom_sheet.dart';
import '_presentation/core/reusable/scaled_drawer.dart';
import '_presentation/core/scroll_controllers.dart';
import '_presentation/core/size_config.dart';
import '_presentation/main_navigation_pages/home/home_nav_page.dart';
import 'application/auth/auth_bloc.dart';
import 'application/notification/bloc/notification_bloc.dart';
import 'infastructure/notification/push_notification_service.dart';
import 'injection.dart';
import 'routes/app_router.gr.dart';
import 'utility/log_dispose.dart';
import 'utility/log_init.dart';

class BottomNavPage extends StatefulWidget
// implements AutoRouteWrapper
{
  const BottomNavPage({
    Key? key,
  }) : super(key: key);

  @override
  BottomNavPageState createState() => BottomNavPageState();

  // @override
  // Widget wrappedRoute(BuildContext context) {
  //   return Provider(
  //     create: (context) => HomeControllerManager(),
  //     child: this,
  //   );
  // }
}

class BottomNavPageState extends State<BottomNavPage> {
  late final PageController _pageController;
  late final MyDrawerController drawerController;

  @override
  void initState() {
    logInit(BottomNavPage);
    _pageController = PageController();
    drawerController = context.read<MyDrawerController>();
    WidgetsBinding.instance?.addPostFrameCallback((_) async {
      await getIt<PushNotificationService>().initiliase();
    });
    super.initState();
  }

  @override
  void dispose() {
    logDispose(BottomNavPage);
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('BOTOM_NAV_PAGE BUILDS');
    SizeConfig().init(context);

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {},
      child: AutoTabsRouter(
        routes: const [
          HomeRouter(),
          BrowseRouter(),
          MyEmptyRoute(),
          ChatNavRoute(),
          InboxRoute(),
        ],
        builder: (context, child, animation) {
          final tabsRouter = AutoTabsRouter.of(context);

          return ScaledDrawer(
            curve: Curves.easeInOut,
            controller: drawerController,
            drawer: AppDrawer(page: widget),
            drawerColor: AppColors.black,
            drawerWidth: MediaQuery.of(context).size.width * 0.7,
            page: Scaffold(
              backgroundColor: AppColors.lightBlack,
              body: child,
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: tabsRouter.activeIndex,
                onTap: (index) {
                  processTabChange(tabsRouter, index);

                  // if (index == 2) {
                  //   context.read<AuthBloc>().state.maybeMap(
                  //         authenticated: (_) => navigateToSearchPage(),
                  //         orElse: () => showSignUpSheet(context),
                  //       );
                  // } else {
                  //   tabsRouter.setActiveIndex(index);
                  // }
                },
                items: mapNavigationItems(tabsRouter.activeIndex),
              ),
            ),
          );
        },
      ),
    );
  }

  void processTabChange(TabsRouter tabsRouter, int newIndex) {
    if (newIndex == 2) {
      context.read<AuthBloc>().state.maybeMap(
            authenticated: (_) => navigateToSearchPage(),
            orElse: () => showSignUpSheet(context),
          );
    } else if (tabsRouter.activeIndex == newIndex && newIndex == 0) {
      final scrollControllers = getIt<HomeControllerManager>();
      scrollControllers.scrollToStartOrRefresh();
    } else {
      tabsRouter.setActiveIndex(newIndex);
    }
  }

  void navigateToSearchPage() {
    AutoRouter.of(context).push(PostFeedSearchRoute());
  }

  void popWhenUnauthenticated(BuildContext context, AuthState state) {
    print('popWhenUn... listener');
    state.maybeMap(
      orElse: () => null,
      unauthenticated: (value) => AutoRouter.of(context).pushAndPopUntil(
        WrappedBottomNavRoute(),
        predicate: (r) => false,
      ),
    );
  }

  List<BottomNavigationBarItem> mapNavigationItems(int index) {
    return navigationItems
        .map(
          (item) => BottomNavigationBarItem(
            icon: item.index == index ? item.selectedIcon : item.unselectedIcon,
            label: '',
          ),
        )
        .toList();
  }

  // void navigateByIndex(int currentIndex, HomeVM bottomNavigationViewModel) {
  //   if (currentIndex == 2) {
  //     context.read<AuthBloc>().state.maybeMap(
  //           authenticated: (_) => navigateToSearchPage(),
  //           orElse: () => showSignUpSheet(context),
  //         );
  //     return;
  //   } else if (currentIndex != bottomNavigationViewModel.currentPage) {
  //     _pageController.jumpToPage(currentIndex);
  //     bottomNavigationViewModel.changePage(currentIndex);
  //   } else if (bottomNavigationViewModel.currentPage == 0) {
  //     final scrollControllers = context.read<HomeControllerManager>();
  //     scrollControllers.scrollToStartOrRefresh();
  //   }
  // }

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
              return Badge(
                badgeContent: Text(total_notificaion_count > 99
                    ? '+99'
                    : total_notificaion_count.toString()),
                showBadge: total_notificaion_count != 0,
                child: Icon(FontAwesomeIcons.bell),
                toAnimate: false,
                position: BadgePosition.topEnd(end: -10, top: -8),
              );
            },
          ),
        ),
      ];
}
