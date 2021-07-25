import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:reddit_clone/_presentation/core/app/colors.dart';
import 'package:reddit_clone/_presentation/core/app/drawer/app_drawer.dart';
import 'package:reddit_clone/_presentation/core/size_config.dart';

import '_presentation/home/home_vm.dart';
import 'main_page.dart';
import 'routes.dart';

const double ANIMATION_BEGIN_OFFSET = 0;
const double ANIMATION_END_OFFSET = 240;
const double DRAWER_WIDTH_SCALE = 0.7;
const int DRAWER_ANIMATION_DURATION_IN_MILLISECONDS = 400;

class DrawerWrapper extends StatefulWidget {
  const DrawerWrapper({
    Key? key,
  }) : super(key: key);

  @override
  DrawerWrapperState createState() => DrawerWrapperState();
}

class DrawerWrapperState extends State<DrawerWrapper> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  static const List<Widget> widgetOptions = <Widget>[
    MainPage(),
    Center(
      child: Text(
        'Index 0: Home',
        style: TextStyle(color: Colors.white),
      ),
    ),
    Center(
      child: Text(
        'Index 1: Business',
        style: TextStyle(color: Colors.white),
      ),
    ),
    Center(
      child: Text(
        'Index 2: School',
        style: TextStyle(color: Colors.white),
      ),
    ),
    Center(
      child: Text(
        'Index 3: Settings',
        style: TextStyle(color: Colors.white),
      ),
    ),
  ];
  int index = 0;

  double xPageOffset = 0;
  bool isDragging = false;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
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
          type: BottomNavigationBarType.fixed,
          onTap: (index) => navigateByIndex(index, value),
        ),
      ),
      body: Stack(
        children: [
          buildDrawer(),
          buildPage(),
        ],
      ),
    );
  }

  void navigateByIndex(int currentIndex, HomeVM bottomNavigationViewModel) {
    if (currentIndex == 2) {
      Navigator.of(context).pushNamed(Routes.postFeedSearchPage);
      return;
    }
    if (currentIndex != bottomNavigationViewModel.currentPage) {
      _pageController.jumpToPage(currentIndex);
    }
    bottomNavigationViewModel.changePage(currentIndex);
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

  void closeDrawer() {
    setState(() {
      xPageOffset = 0;
      isDrawerOpen = false;
    });
  }

  void openDrawer() {
    final width = MediaQuery.of(context).size.width;
    setState(() {
      if (width > 1024) {
        xPageOffset = MediaQuery.of(context).size.width * 0.2;
      } else {
        xPageOffset = MediaQuery.of(context).size.width * DRAWER_WIDTH_SCALE;
      }
      isDrawerOpen = true;
    });
  }

  SafeArea buildDrawer() => SafeArea(
        child: SizedBox(
          width: xPageOffset,
          child: AppDrawer(
            isDrawerOpen: isDrawerOpen,
            closeDrawer: closeDrawer,
          ),
        ),
      );

  Widget buildPage() {
    return WillPopScope(
      onWillPop: () {
        if (isDrawerOpen) {
          closeDrawer();
          return Future.value(false);
        }
        return Future.value(true);
      },
      child: GestureDetector(
        onTap: isDrawerOpen ? closeDrawer : null,
        onHorizontalDragStart: (details) => isDragging = true,
        onHorizontalDragUpdate: (details) {
          if (!isDragging) return;
          const double delta = 1;

          if (details.delta.dx > delta) {
            openDrawer();
          } else if (details.delta.dx < -delta) {
            closeDrawer();
          }
          isDragging = false;
        },

        child: AnimatedContainer(
          curve: Curves.easeInOut,
          duration: const Duration(
              milliseconds: DRAWER_ANIMATION_DURATION_IN_MILLISECONDS),
          transform: Matrix4.translationValues(xPageOffset, 0, 0),
          // transform: Matrix4.translationValues(pos, 0, 0),

          child: AbsorbPointer(
            absorbing: isDrawerOpen,
            // child: NewPage(
            //     // openDrawer: openDrawer,
            //     ),
            child: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: widgetOptions,
            ),
          ),
        ),
        // ),
      ),
    );
  }
}
