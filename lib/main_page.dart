import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '_presentation/core/app/colors.dart';
import '_presentation/core/app/drawer/app_drawer.dart';
import '_presentation/core/authentication_button.dart';
import '_presentation/core/reusable/scaled_drawer.dart';
import '_presentation/core/size_config.dart';
import '_presentation/home/home_vm.dart';
import '_presentation/inbox/inbox_page.dart';
import 'application/auth/auth_bloc.dart';
import 'application/main_page_bloc/main_page_bloc.dart';
import 'home_page.dart';
import 'routes.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  late PageController _pageController;
  late MyDrawerController drawerController;
  // late ScrollController scrollController;

  @override
  void initState() {
    _pageController = PageController();
    drawerController = context.read<MyDrawerController>();
    // scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  static List<Widget> widgetOptions = <Widget>[
    const HomePage(),
    Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'HAHAHAHAHAHA',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
    const Center(
      child: Text(
        'Index 3: Settings',
        style: TextStyle(color: Colors.white),
      ),
    ),
    InboxPage()
  ];
  int index = 0;

  double xPageOffset = 0;
  bool isDragging = false;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () => null,
          unauthenticated: (value) =>
              Navigator.of(context).pushNamedAndRemoveUntil(
            Routes.mainPage,
            (route) => false,
          ),
        );
        // TODO: implement listener
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
            // initial: initial,
            // unauthenticated: unauthenticated,
            authenticated: (_) => Navigator.of(context).pushNamed(
                Routes.postFeedSearchPage,
                arguments: context.read<MainPageBloc>()),
            orElse: () => showSignUpSheet(context),
          );
      return;
    }
    if (currentIndex != bottomNavigationViewModel.currentPage) {
      _pageController.jumpToPage(currentIndex);
      bottomNavigationViewModel.changePage(currentIndex);
    }
    // else {
    //   scrollController.animateTo(0,
    //       duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
    // }
  }

  List<NavigationItem> get navigationItems {
    return const <NavigationItem>[
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
        unselectedIcon: Icon(FontAwesomeIcons.commentDots),
      ),
      NavigationItem(
        index: 4,
        selectedIcon: Icon(FontAwesomeIcons.solidBell),
        unselectedIcon: Icon(FontAwesomeIcons.bell),
      ),
    ];
  }

  Widget buildPage() {
    print(context.read<MainPageBloc>());
    return PageView(
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: widgetOptions,
    );
  }
}
