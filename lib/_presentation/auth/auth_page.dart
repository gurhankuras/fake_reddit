import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:reddit_clone/_presentation/auth/password_text_input.dart';
import 'package:reddit_clone/_presentation/auth/sign_up_email_text_input.dart';
import 'package:reddit_clone/_presentation/auth/sign_up_text_field.dart';
import 'package:reddit_clone/_presentation/auth/sign_up_username_text_input.dart';
import 'package:reddit_clone/_presentation/core/app/app_button.dart';
import 'package:reddit_clone/_presentation/core/app/colors.dart';
import 'package:reddit_clone/_presentation/core/assets.dart';
import 'package:reddit_clone/_presentation/core/authentication_button.dart';
import 'package:reddit_clone/_presentation/core/reusable/app_header.dart';
import 'package:reddit_clone/_presentation/core/reusable/app_text_input.dart';
import 'package:reddit_clone/_presentation/core/reusable/text_divider_line.dart';
import 'package:reddit_clone/_presentation/core/size_config.dart';
import 'package:reddit_clone/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:reddit_clone/routes.dart';

enum AuthPageEnum { signup, login }

class AuthPage extends StatelessWidget {
  final String actionText;
  final VoidCallback onActionTap;
  final String headerText;
  final List<Widget> textFields;
  final Widget bottomSheet;
  final AuthPageEnum auth;

  // final Animation<double> animation;
  const AuthPage({
    Key? key,
    required this.actionText,
    required this.onActionTap,
    required this.headerText,
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

  const AuthPageBody({
    Key? key,
    required this.headerText,
    required this.textFields,
    required this.auth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppHeader(headerText),
        const PoliciesText(),
        if (auth != AuthPageEnum.signup)
          SizedBox(height: SizeConfig.defaultSize),
        if (auth == AuthPageEnum.signup) const AgreementCheck(),
        const AuthButton(
          auth: AuthMethods.google,
          width: double.infinity,
        ),
        const AuthButton(
          auth: AuthMethods.apple,
          width: double.infinity,
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
  final Animation<double> animation;
  final bool active;
  final bool isLoading;
  final VoidCallback onTap;
  // final Widget text;
  const PersistentContinueButton({
    Key? key,
    required this.animation,
    required this.active,
    required this.isLoading,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (BuildContext context, Widget? child) => SlideTransition(
          position: animation.drive(
            Tween(begin: const Offset(0, 1), end: Offset.zero),
          ),
          child: child),
      animation: animation,
      child: SizedBox(
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
      ),
    );
  }
}

/*


*/
