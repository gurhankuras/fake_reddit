import 'package:flutter/material.dart';

import 'package:reddit_clone/_presentation/core/app/app_button.dart';
import 'package:reddit_clone/_presentation/core/app/colors.dart';
import 'package:reddit_clone/_presentation/core/assets.dart';
import 'package:reddit_clone/_presentation/core/authentication_button.dart';
import 'package:reddit_clone/_presentation/core/size_config.dart';
import 'package:reddit_clone/routes.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

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
              onTap: () => Navigator.of(context).pushNamed(Routes.signInUpPage),
              child: Text(
                'SIGN UP',
                style: Theme.of(context).textTheme.bodyText1?.apply(
                      color: Colors.blue,
                      fontSizeFactor: 1.1,
                    ),
              ),
            ),
          )
        ],
      ),
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
      //   child: AppButton(
      //     padding: const EdgeInsets.symmetric(vertical: 12.0),
      //     text: 'Continue',
      //   ),
      // ),
      bottomSheet: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(
              right: 20.0, left: 20.0, bottom: 10.0, top: 20.0),
          child: AppButton(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            text: 'Continue',
          ),
        ),
      ),
      body: Scrollbar(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create an account',
                  style: Theme.of(context).textTheme.headline6?.apply(
                        fontSizeFactor: 1.15,
                        fontWeightDelta: 3,
                      ),
                ),
                const PoliciesText(width: null),
                const AgreementCheck(),
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
                const AppTextInput(hintText: 'Email'),
                const AppTextInput(hintText: 'Username'),
                const AppTextInput(
                  hintText: 'Password',
                  obscureText: true,
                ),
                Container(
                  // color: Colors.amber,
                  width: double.infinity,
                  height: 100,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AppTextInput extends StatelessWidget {
  final String hintText;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;
  final TextInputType? textInputType;
  final TextInputAction textInputAction;
  final bool obscureText;

  const AppTextInput({
    Key? key,
    required this.hintText,
    this.borderRadius,
    this.padding,
    this.textInputType,
    this.textInputAction = TextInputAction.next,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 4.0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: borderRadius ?? BorderRadius.circular(20),
            child: TextField(
              keyboardType: textInputType,
              textInputAction: textInputAction,
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: Theme.of(context).textTheme.bodyText1?.apply(
                      color: Colors.grey[500],
                    ),
                filled: true,
                fillColor: AppColors.lightBlack2,
                border: InputBorder.none,
                suffix: Padding(padding: EdgeInsets.symmetric(horizontal: 16)),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            top: 0,
            right: 10,
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.remove_red_eye),
            ),
          )
        ],
      ),
    );
  }
}

class TextDividerLine extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final double spaceAroundText;
  final double endPointsIndent;
  final Color color;
  const TextDividerLine({
    Key? key,
    required this.text,
    this.textStyle,
    this.spaceAroundText = 15,
    this.endPointsIndent = 20,
    this.color = AppColors.moreLightGrey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            endIndent: spaceAroundText,
            indent: endPointsIndent,
            color: color,
          ),
        ),
        Text('OR', style: textStyle),
        Expanded(
          child: Divider(
            endIndent: endPointsIndent,
            indent: spaceAroundText,
            color: color,
          ),
        ),
      ],
    );
  }
}
