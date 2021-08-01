import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'app/colors.dart';

void showSnack({
  required String message,
  required BuildContext context,
  Widget? button,
  Duration? duration,
  Color? indicatorColor,
}) {
  Flushbar(
    message: message,
    icon: const Icon(
      FontAwesomeIcons.redditAlien,
      size: 20.0,
      color: Colors.white,
    ),
    mainButton: button,

    // TextButton(
    //   child: Text('UNDO'),
    //   onPressed: () {},
    // ),

    backgroundColor: AppColors.lightBlack,
    margin: const EdgeInsets.symmetric(horizontal: 5),
    shouldIconPulse: false,
    forwardAnimationCurve: Curves.easeInOut,
    reverseAnimationCurve: Curves.easeInOut,
    duration: duration ?? const Duration(seconds: 3),
    leftBarIndicatorColor: indicatorColor ?? Colors.blue[900],
  ).show(context);
}
