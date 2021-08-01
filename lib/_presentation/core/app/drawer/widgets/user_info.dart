import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../reusable/scaled_drawer.dart';
import '../../app_button.dart';
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
        Column(
          children: [
            Container(
              width: 100,
              height: 150,
              color: Colors.white,
            ),
            const UserName(name: 'Brilliant_Program232'),
            const OnlineStatus(),
            const SizedBox(height: 10),
            const AppButton.icon(
              text: 'Style Avatar',
              icon: FontAwesomeIcons.tshirt,
            ),
            const AdditionalUserInfo()
          ],
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
