import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:reddit_clone/_presentation/main_navigation_pages/browse/browse_navigator.dart';
import 'package:reddit_clone/_presentation/main_navigation_pages/home/home_navigator.dart';
import 'package:reddit_clone/application/chat/chat_rooms/chat_rooms_bloc.dart';

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

// Future<void> backgroundNotificationHandler(RemoteMessage message) async {
//   getIt<NavigationService>().navigateTo(Routes.chatPage);
// }

class BottomNavPageState extends State<BottomNavPage> {
  late PageController _pageController;
  late MyDrawerController drawerController;
  // late ScrollController scrollController;

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

  // static List<Widget> widgetOptions =
  int index = 0;

  double xPageOffset = 0;
  bool isDragging = false;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    print(dotenv.env[EnvKeys.GIPHY_API_KEY]);
    SizeConfig().init(context);
    print(context.read<HomeControllerManager>());

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () => null,
          unauthenticated: (value) =>
              Navigator.of(context).pushNamedAndRemoveUntil(
            Routes.bottomNavPage,
            (route) => false,
          ),
        );
      },
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
              items: navigationItems
                  .map((item) => BottomNavigationBarItem(
                        icon: item.index == index
                            ? item.selectedIcon
                            : item.unselectedIcon,
                        label: '',
                      ))
                  .toList(),
              currentIndex: value.currentPage,
              onTap: (index) => navigateByIndex(index, value),
            ),
          ),
          body: buildPage(),
        ),
      ),
    );
  }

  void navigateByIndex(int currentIndex, HomeVM bottomNavigationViewModel) {
    if (currentIndex == 2) {
      context.read<AuthBloc>().state.maybeMap(
            authenticated: (_) => Navigator.of(context).pushNamed(
                Routes.postFeedSearchPage,
                arguments: context.read<MainPageBloc>()),
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

  List<NavigationItem> get navigationItems {
    // print(context.read<NotificationBloc>());
    return <NavigationItem>[
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
            // Icon(FontAwesomeIcons.commentDots)
            BlocBuilder<NotificationBloc, NotificationState>(
          builder: (context, state) {
            return state.info.fold(
              () => Icon(FontAwesomeIcons.commentDots),
              (inf) {
                return inf.unreadMessagesCount != 0
                    ? Badge(
                        badgeContent: Text(inf.unreadMessagesCount.toString()),
                        child: Icon(FontAwesomeIcons.commentDots),
                        position: BadgePosition.topEnd(end: -10, top: -10),
                      )
                    : Icon(FontAwesomeIcons.commentDots);
              },
            );
          },
        ),
      ),
      NavigationItem(
        index: 4,
        selectedIcon: Icon(FontAwesomeIcons.solidBell),
        unselectedIcon: Icon(FontAwesomeIcons.bell),
      ),
    ];
  }

  Widget buildPage() {
    final scrollControllers = context.read<HomeControllerManager>();
    return PageView(
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: <Widget>[
        // Provider.value(value:
        Provider.value(
          value: scrollControllers,
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
      ],
    );
  }
}
