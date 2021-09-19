import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../../../size_config.dart';

import '../../../reusable/scaled_drawer.dart';
import '../../../button/app_button.dart';
import 'additional_user_info.dart';
import 'online_status.dart';
import 'user_name.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    Key? key,
    // required this.closeDrawer,
  }) : super(key: key);

  // final VoidCallback closeDrawer;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          // top: 20,
          child: Column(
            children: [
              SizedBox(height: 20),
              SizedBox(
                width: SizeConfig.screenWidthPercentage(35),
                child: AspectRatio(
                  aspectRatio: 6 / 7,
                  child: Image.network('https://i.redd.it/26s9eejm8vz51.png'),
                ),
              ),
              const UserName(name: 'Brilliant_Program232'),
              const OnlineStatus(),
              const SizedBox(height: 10),
              AppButton.icon(
                // text: Text(
                //   'Style Avatar',
                //   style: Theme.of(context)
                //       .textTheme
                //       .bodyText1
                //       ?.copyWith(fontWeight: FontWeight.w800),
                // ),
                text: 'Style Avatar',
                icon: FontAwesomeIcons.tshirt,
                onTap: () {
                  // TODO
                },
              ),
              const AdditionalUserInfo()
            ],
          ),
        ),
        CloseButton(/*closeDrawer: closeDrawer*/),
      ],
    );
  }
}

class CloseButton extends StatelessWidget {
  const CloseButton({
    Key? key,
    // required this.closeDrawer,
  }) : super(key: key);

  // final VoidCallback closeDrawer;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 30,
      left: 10,
      child: GestureDetector(
        onTap: () => context.read<MyDrawerController>().closeDrawer(),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.close,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
