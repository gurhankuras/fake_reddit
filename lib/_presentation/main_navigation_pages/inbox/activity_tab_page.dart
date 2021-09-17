import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reddit_clone/_presentation/core/constants/assets.dart';
import 'package:reddit_clone/_presentation/core/constants/colors.dart';
import 'package:reddit_clone/_presentation/core/size_config.dart';
import 'package:reddit_clone/app_router.gr.dart';
import 'package:reddit_clone/routes.dart';
import 'package:reddit_clone/utility/log_init.dart';

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

  bool isLoading = false;

  @override
  void initState() {
    logInit(ActivityTabPage);

    _scrollController = ScrollController();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
    _animationController.dispose();
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
                              onPressed: () =>
                                  // Navigator.of(context)
                                  //     .pushNamed(Routes.loginPage),
                                  AutoRouter.of(context).push(LoginRoute()),
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
                              onPressed: () =>
                                  AutoRouter.of(context).push(LoginRoute()),

                              //  Navigator.of(context)
                              //     .pushNamed(Routes.signupPage),
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
