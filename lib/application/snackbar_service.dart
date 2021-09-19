import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../_presentation/core/constants/assets.dart';
import '../_presentation/core/constants/colors.dart';
import '../routes/app_router.gr.dart';
import '../domain/i_snackbar_service.dart';
import '../injection.dart';

import 'package:injectable/injectable.dart';

@LazySingleton(as: ISnackbarService)
class SnackbarService implements ISnackbarService {
  final router = getIt<AppRouter>();

  @override
  void show(
      {required String message,
      // required BuildContext context,
      Widget? button,
      Duration? duration,
      Color? indicatorColor,
      Widget? icon}) {
    Flushbar(
      message: message,
      icon: icon ??
          const Icon(
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
    ).show(router.navigatorKey.currentContext!);
  }

  @override
  void error(String message) {
    show(
      message: message,
      indicatorColor: Colors.red,
      icon: SizedBox(
          height: 20,
          width: 20,
          child: Image.asset(Assets.alien_failed, width: 20)),
    );
  }

  @override
  void info(String message) {
    show(
      message: message,
      indicatorColor: Colors.blue,
      icon: SizedBox(
          height: 10,
          width: 10,
          child: Image.asset(Assets.alien_failed, width: 10)),
    );
  }

  @override
  void success(String message) {
    show(message: message, indicatorColor: Colors.green);
  }
}
