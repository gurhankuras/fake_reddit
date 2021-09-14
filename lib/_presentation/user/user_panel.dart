import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:reddit_clone/_presentation/core/constants/format.dart';
import 'package:reddit_clone/_presentation/core/mock_rounded_text_input.dart';
import 'package:reddit_clone/application/navigation_service.dart';
import 'package:reddit_clone/injection.dart';
import 'package:reddit_clone/route_params.dart';
import 'package:reddit_clone/routes.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'package:reddit_clone/_presentation/core/constants/assets.dart';
import 'package:reddit_clone/_presentation/core/constants/colors.dart';
import 'package:reddit_clone/_presentation/core/reusable/app_header.dart';
import 'package:reddit_clone/_presentation/core/size_config.dart';

class UserPanel extends StatelessWidget {
  final PanelController panelController;
  final ScrollController? scrollController;
  const UserPanel({
    Key? key,
    required this.panelController,
    this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(Routes.subredditPage),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: Material(
          color: AppColors.lightBlack,
          child: Stack(
            children: [
              _BlueBackground(),
              ScrollConfiguration(
                behavior: MyBehavior(),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.width * 0.05),
                      _Avatar(),
                      _buildUsernameHeaderText(),
                      _buildSubtitle(),
                      KarmaAwardInfoRow(first: info, second: info),
                      KarmaAwardInfoRow(first: info, second: info),
                      _Thropies(),
                      SizedBox(
                          height: MediaQuery.of(context).size.width * 0.015),
                      _buildRecentThropiesText(),
                      ListTile(
                        leading: Icon(
                          Icons.mail_outline,
                          color: AppColors.moreLightGrey,
                        ),
                        horizontalTitleGap: 0,
                        title: AppHeaderText(
                          'Invite To Community',
                          fontSizeFactor: 0.7,
                          fontWeightDelta: 0,
                          color: AppColors.iron,
                        ),
                      ),
                      _buildSendMessage(),
                    ],
                  ),
                ),
              ),
              _buildCloseButton(),
              _buildHidePostsButton(),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildRecentThropiesText() {
    return Row(
      children: [
        Spacer(flex: 10),
        Expanded(
          flex: 90,
          child: AppHeaderText(
            'Recent Thropies',
            fontSizeFactor: 0.6,
            fontWeightDelta: -1,
            color: AppColors.moreLightGrey,
          ),
        ),
      ],
    );
  }

  KeyValuePair<int> get info => KeyValuePair(key: 'Post Karma', value: 5060);

  Padding _buildSubtitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppHeaderText(
            'u/warmconsist196 • 83 d',
            fontSizeFactor: 0.6,
            fontWeightDelta: -1,
            color: AppColors.moreLightGrey,
          ),
        ],
      ),
    );
  }

  Row _buildUsernameHeaderText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppHeaderText(
          'warmconsist196',
          fontSizeFactor: 0.85,
          fontWeightDelta: 0,
        ),
        Icon(
          Icons.chevron_right,
          color: Colors.white,
        )
      ],
    );
  }

  Positioned _buildHidePostsButton() {
    return Positioned(
      top: 15,
      right: 15,
      child: AppIconButton(
        onTap: () {
          // TODO show dialog and according to taken action hide this user's posts
        },
        icon: Icon(
          FontAwesomeIcons.userTimes,
          color: AppColors.iron,
          size: 15,
        ),
        padding: EdgeInsets.all(10),
      ),
    );
  }

  Positioned _buildCloseButton() {
    return Positioned(
      top: 15,
      left: 15,
      child: AppIconButton(
        onTap: () => panelController.close(),
        icon: Icon(
          Icons.close,
          color: AppColors.iron,
        ),
      ),
    );
  }

  Widget _buildSendMessage() {
    return GestureDetector(
      onTap: () => getIt<NavigationService>().navigateTo(
        Routes.chatPage,
        arguments: ChatPageParams(roomId: '612cc72f65a882665306cc0e'),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: MockRoundedTextInput(
                height: 35,
                text: 'Message warmconsist196',
              ),
            ),
            AppHeaderText('👍', fontSizeFactor: 0.9)
          ],
        ),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class _Thropies extends StatelessWidget {
  const _Thropies({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(flex: 10),
        Expanded(
          flex: 90,
          child: Row(
            children: List.generate(
              3,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 3.0),
                child: Image.asset(
                  Assets.example_thropy,
                  height: 40,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class KeyValuePair<T> {
  final T value;
  final String key;
  KeyValuePair({
    required this.value,
    required this.key,
  });
}

class KarmaAwardInfoRow extends StatelessWidget {
  final KeyValuePair<int> first;
  final KeyValuePair<int> second;

  const KarmaAwardInfoRow({
    Key? key,
    required this.first,
    required this.second,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.width * 0.03),
      child: Row(
        children: [
          Spacer(flex: 10),
          Expanded(flex: 35, child: _buildInfoBox(first)),
          Spacer(flex: 10),
          Expanded(flex: 35, child: _buildInfoBox(second)),
          Spacer(flex: 10),
        ],
      ),
    );
  }

  Widget _buildInfoBox(KeyValuePair<int> info) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppHeaderText(
            Format.decimalNumber().format(first.value),
            fontSizeFactor: 0.75,
            fontWeightDelta: 0,
          ),
          AppHeaderText(
            first.key,
            fontSizeFactor: 0.6,
            fontWeightDelta: -1,
            color: AppColors.moreLightGrey,
          ),
        ],
      );
}

class _Avatar extends StatelessWidget {
  const _Avatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          child: Image.network('https://i.redd.it/26s9eejm8vz51.png'),
        ),
        Spacer(),
      ],
    );
  }
}

class _BlueBackground extends StatelessWidget {
  const _BlueBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: AppColors.darkBlue,
      height: 100,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: NetworkImage(
            'https://images.unsplash.com/photo-1631160242873-d06ba0aeae98?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'),
        fit: BoxFit.cover,
      )
          // gradient: LinearGradient(
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          //   colors: [
          //     AppColors.darkBlue,
          //     AppColors.darkBlueLight,
          //   ],
          // ),
          ),
    );
  }
}

class AppIconButton extends StatelessWidget {
  final double? size;
  final EdgeInsets? padding;
  final Color color;
  final Widget icon;
  final VoidCallback onTap;
  const AppIconButton({
    Key? key,
    this.size,
    this.padding,
    this.color = Colors.black38,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: padding ?? EdgeInsets.all(5),
          child: icon,
        ),
      ),
    );
  }
}
