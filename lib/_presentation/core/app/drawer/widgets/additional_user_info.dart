// final PageController controller = PageController(initialPage: 0);

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reddit_clone/_presentation/core/app/colors.dart';

class AdditionalUserInfo extends StatefulWidget {
  const AdditionalUserInfo({
    Key? key,
  }) : super(key: key);

  @override
  _AdditionalUserInfoState createState() => _AdditionalUserInfoState();
}

class _AdditionalUserInfoState extends State<AdditionalUserInfo> {
  late ScrollController _controller;
  bool atInitialPosition = true;

  void toggle(double offset) {
    // ignore: constant_identifier_names
    const int ANIMATION_DURATION = 150;
    if (atInitialPosition) {
      _controller.animateTo(offset,
          duration: const Duration(milliseconds: ANIMATION_DURATION),
          curve: Curves.easeIn);
    } else {
      _controller.animateTo(0,
          duration: const Duration(milliseconds: ANIMATION_DURATION),
          curve: Curves.easeIn);
    }
    atInitialPosition = !atInitialPosition;
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return GestureDetector(
        onTap: () {
          toggle(constraints.maxWidth / 2);
        },
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            controller: _controller,
            children: <Widget>[
              SizedBox(
                width: constraints.maxWidth / 2,
                child: const Info(
                  icon: FaIcon(FontAwesomeIcons.meteor),
                  subtitle: 'Karma',
                  title: '1',
                ),
              ),
              SizedBox(
                width: constraints.maxWidth / 2,
                child: const Info(
                  icon: FaIcon(FontAwesomeIcons.birthdayCake),
                  title: '177 d',
                  subtitle: 'Reddit age',
                ),
              ),
              SizedBox(
                width: constraints.maxWidth / 2,
                child: Center(
                  child: Text(
                    'A redditor since\nJan 23, 2021',
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        ?.copyWith(color: AppColors.moreLightGrey),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

class Info extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget icon;
  const Info({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          icon,
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(
                  subtitle,
                  style: const TextStyle(color: AppColors.moreLightGrey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

    // return IntrinsicHeight(
    //   child: Stack(
    //     children: [
    //       Row(
    //         children: [
    //           Info(
    //             icon: FontAwesomeIcons.meteor,
    //             subtitle: 'Karma',
    //             title: '1',
    //           ),
    //           VerticalDivider(
    //             indent: 10,
    //             endIndent: 10,
    //             color: AppColors.lightGrey,
    //           ),
    //           Info(
    //             icon: FontAwesomeIcons.birthdayCake,
    //             title: '177 d',
    //             subtitle: 'Reddit age',
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
    // final PageController controller = PageController(
    //   initialPage: 0,
    //   viewportFraction: 0.7,
    // );