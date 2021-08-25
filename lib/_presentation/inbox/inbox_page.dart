import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../routes.dart';
import '../core/app/colors.dart';
import '../core/app/extensions/string_fill_extension.dart';
import '../core/assets.dart';
import '../core/reusable/scaled_drawer.dart';
import '../core/size_config.dart';
import 'messages_tab_page.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabBarWidget = tabBar;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: appBar(tabBarWidget, context),
        // backgroundColor: Colors.indigo[800],

        body: const TabBarView(
          children: [
            ActivityTabPage(),
            MessagesTabPage(),
          ],
        ),
      ),
    );
  }

  TabBar get tabBar {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.label,
      labelPadding: const EdgeInsets.symmetric(horizontal: 10),
      tabs: [
        Tab(text: 'Activity'.fillN(3)),
        Tab(text: 'Messages'.fillN(3)),
      ],
    );
  }

  PreferredSize appBar(TabBar tabBar, BuildContext context) {
    return PreferredSize(
      preferredSize:
          Size.fromHeight(kToolbarHeight + tabBar.preferredSize.height),
      child: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: AppBar(
          centerTitle: true,
          title: Text(
            'Inbox',
            style: Theme.of(context)
                .textTheme
                .bodyText1
                ?.apply(fontSizeFactor: 1.2),
          ),
          bottom: tabBar,
          leading: GestureDetector(
            onTap: () => context.read<MyDrawerController>().openDrawer(),
            child: Transform.scale(
              scale: 0.6,
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://styles.redditmedia.com/t5_23ty4q/styles/profileIcon_vden2tg74d051.jpg?width=256&height=256&crop=256:256,smart&s=54e523221183c71419c0cadc616a13418f0c92ad',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ActivityTabPage extends StatefulWidget {
  const ActivityTabPage({
    Key? key,
  }) : super(key: key);

  @override
  _ActivityTabPageState createState() => _ActivityTabPageState();
}

class _ActivityTabPageState extends State<ActivityTabPage>
    with SingleTickerProviderStateMixin {
  late final ScrollController _scrollController;
  late final AnimationController _animationController;
  // late final Animation<double> _opacityAnimation;

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
    _animationController.dispose();
  }

  bool isLoading = false;

  @override
  void initState() {
    _scrollController = ScrollController();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    // _opacityAnimation =
    _scrollController.addListener(() async {
      // print(_scrollController.position.minScrollExtent);
      print(_scrollController.offset + 50);
      _animationController.value = -_scrollController.offset / 50;
      if (_scrollController.position.minScrollExtent >=
          _scrollController.offset + 50) {
        print('Gecti');
        if (!isLoading) {
          setState(() {
            isLoading = true;
          });
          await Future.delayed(Duration(seconds: 3));
          setState(() {
            isLoading = false;
          });
        }
      }
    });
    super.initState();
  }

  double max30(double value) {
    if (value < 30) {
      return value;
    }
    return 30;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // if (isLoading)
              // AnimatedBuilder(
              //   animation: _animationController,
              //   builder: (context, child) => FadeTransition(
              //     opacity: _animationController,
              //     child: child,
              //     // padding: EdgeInsets.only(bottom: -_scrollController.offset),
              //   ),
              //   child:

              // RefreshIndicator(
              //     child: CircularProgressIndicator(),
              //     onRefresh: () async {
              //       await Future.delayed(
              //           Duration(seconds: 2), () => print('asdasdsad'));
              //     }),
              // ),
              // Container(
              //   color: Colors.green,
              //   height: 100,
              //   width: double.infinity,
              // ),

              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.lightBlack3,
                ),
                child: SvgPicture.asset(
                  Assets.shibaInu,
                  color: Colors.white,
                  width: 50,
                  height: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Wow, such empty'),
              )
            ],
          ),
        ),
        SizedBox.expand(
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(
              parent: BouncingScrollPhysics(),
            ),
            controller: _scrollController,
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                color: AppColors.lightBlack,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Be the first to know',
                        style: Theme.of(context).textTheme.bodyText1?.apply(
                              fontSizeFactor: 1.15,
                            ),
                      ),
                      SizedBox(height: SizeConfig.screenWidthPercentage(1)),
                      Text(
                        'Sign up or Log in to customize your notifications, including chats and inbox',
                        style: Theme.of(context).textTheme.bodyText2?.apply(
                              fontSizeFactor: 1.0,
                            ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            OutlinedButton(
                              onPressed: () => Navigator.of(context)
                                  .pushNamed(Routes.loginPage),
                              child: Text(
                                'LOG IN',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.apply(
                                      fontSizeFactor: 0.8,
                                      color: Colors.blue[300],
                                      fontWeightDelta: 3,
                                    ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  // padding: EdgeInsets.zero,
                                  shape: StadiumBorder(),
                                  side: BorderSide(
                                    color: Colors.blue,
                                    width: 1,
                                  )),
                            ),
                            SizedBox(width: SizeConfig.defaultSize),
                            ElevatedButton(
                              onPressed: () => Navigator.of(context)
                                  .pushNamed(Routes.signupPage),
                              child: Text(
                                'SIGN UP',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.apply(
                                      fontSizeFactor: 0.8,
                                      fontWeightDelta: 3,
                                    ),
                              ),
                              style: OutlinedButton.styleFrom(
                                // padding: EdgeInsets.zero,
                                backgroundColor: Colors.blue[400],
                                // primary: Colors.blue[200],

                                shape: StadiumBorder(),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
