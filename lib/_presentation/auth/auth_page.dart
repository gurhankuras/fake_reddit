import 'package:flutter/material.dart';

import '../core/button/app_button.dart';
import '../core/constants/colors.dart';
import '../core/constants/assets.dart';
import '../core/authentication_button.dart';
import '../core/reusable/app_header.dart';
import '../core/reusable/text_divider_line.dart';
import '../core/size_config.dart';

enum AuthPageEnum { signup, login }

class AuthPage extends StatelessWidget {
  final String actionText;
  final VoidCallback onActionTap;
  final String headerText;
  final VoidCallback onGoogleAuthPressed;
  final VoidCallback onAppleAuthPressed;

  final List<Widget> textFields;
  final Widget bottomSheet;
  final AuthPageEnum auth;

  // final Animation<double> animation;
  const AuthPage({
    Key? key,
    required this.actionText,
    required this.onActionTap,
    required this.headerText,
    required this.onGoogleAuthPressed,
    required this.onAppleAuthPressed,
    required this.textFields,
    required this.bottomSheet,
    required this.auth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SizedBox(
          width: 35,
          child: Image.asset(Assets.reddit),
        ),
        actions: [
          Center(
            child: GestureDetector(
              onTap: onActionTap,
              child: Text(
                actionText,
                style: Theme.of(context).textTheme.bodyText1?.apply(
                      color: Colors.blue,
                      fontSizeFactor: 1.1,
                    ),
              ),
            ),
          )
        ],
      ),
      bottomSheet: bottomSheet,
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450),
          child: Scrollbar(
            thickness: 3,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics(),
              ),
              reverse: true,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                child: AuthPageBody(
                  headerText: headerText,
                  textFields: textFields,
                  onAppleAuthPressed: onAppleAuthPressed,
                  onGoogleAuthPressed: onGoogleAuthPressed,
                  auth: auth,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AuthPageBody extends StatelessWidget {
  final String headerText;
  final List<Widget> textFields;
  final AuthPageEnum auth;
  final VoidCallback onGoogleAuthPressed;
  final VoidCallback onAppleAuthPressed;

  const AuthPageBody({
    Key? key,
    required this.headerText,
    required this.textFields,
    required this.auth,
    required this.onGoogleAuthPressed,
    required this.onAppleAuthPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppHeaderText(headerText),
        const PoliciesText(),
        if (auth != AuthPageEnum.signup)
          SizedBox(height: SizeConfig.defaultSize),
        if (auth == AuthPageEnum.signup) const AgreementCheck(),
        AuthButton(
          auth: AuthMethods.google,
          width: double.infinity,
          onPressed: onGoogleAuthPressed,
        ),
        AuthButton(
          auth: AuthMethods.apple,
          width: double.infinity,
          onPressed: onAppleAuthPressed,
        ),
        SizedBox(height: SizeConfig.defaultSize),
        TextDividerLine(
          text: 'OR',
          textStyle: Theme.of(context).textTheme.caption?.apply(
                color: AppColors.iron,
                fontWeightDelta: 3,
              ),
        ),
        ...textFields,
        const SizedBox(
          width: double.infinity,
          height: 100,
        )
      ],
    );
  }
}

class PersistentContinueButton extends StatelessWidget {
  // final Animation<double> animation;
  final bool active;
  final bool isLoading;
  final VoidCallback onTap;
  // final Widget text;
  const PersistentContinueButton({
    Key? key,
    // required this.animation,
    required this.active,
    required this.isLoading,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // AnimatedBuilder(
        //   builder: (BuildContext context, Widget? child) => SlideTransition(
        //       position: animation.drive(
        //         Tween(begin: const Offset(0, 1), end: Offset.zero),
        //       ),
        //       child: child),
        // animation: animation,
        // child:
        SizedBox(
      width: double.infinity,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 100),
        child: Padding(
          padding: const EdgeInsets.only(
              right: 20.0, left: 20.0, bottom: 10.0, top: 20.0),
          child: AppButton(
            active: active,
            isLoading: isLoading,
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            text: 'Continue',
            onTap: onTap,
          ),
        ),
      ),
      // ),
    );
  }
}

/*


*/
