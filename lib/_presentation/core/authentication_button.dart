import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:reddit_clone/_presentation/core/app/app_bottom_modal_sheet.dart';
import 'package:reddit_clone/_presentation/core/assets.dart';
import 'package:reddit_clone/_presentation/core/size_config.dart';

import 'app/colors.dart';

enum AuthMethods {
  google,
  apple,
  email,
}

class _AuthMethodData {
  final String image;
  final String name;
  final Color? color;

  _AuthMethodData({
    required this.image,
    required this.name,
    this.color,
  });
}

Map<AuthMethods, _AuthMethodData> _methods = {
  AuthMethods.google: _AuthMethodData(name: 'Google', image: Assets.google),
  AuthMethods.apple:
      _AuthMethodData(name: 'Apple', image: Assets.apple, color: Colors.white),
  AuthMethods.email:
      _AuthMethodData(name: 'Email', image: Assets.email, color: Colors.blue)
};

class AuthButton extends StatelessWidget {
  final AuthMethods auth;
  final double? width;
  const AuthButton({
    Key? key,
    required this.auth,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authTypeData = _methods[auth]!;
    return SizedBox(
      width: width,
      child: OutlinedButton.icon(
        icon: SvgPicture.asset(
          authTypeData.image,
          height: 18,
          width: 18,
          color: authTypeData.color,
        ),
        label: Text(
          'Continue with ${authTypeData.name}',
          style: Theme.of(context).textTheme.bodyText1?.apply(
                color: Colors.blue,
                fontWeightDelta: 3,
                fontSizeDelta: 1.1,
              ),
        ),
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          // primary: Colors.white,
          // padding: EdgeInsets.zero,
          side: const BorderSide(
            style: BorderStyle.solid,
            color: Colors.blue,
            // width: 10,
          ),

          shape: const StadiumBorder(),
        ),
      ),
    );
  }
}

void showSignUpSheet(BuildContext context) {
  showModalBottomSheet<void>(
    // backgroundColor: Colors.white,
    context: context,
    enableDrag: false,
    builder: (BuildContext context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: SizeConfig.defaultSize * 2),
          const _Header(),
          SizedBox(height: SizeConfig.defaultSize),
          PoliciesText(
            width: SizeConfig.screenWidthPercentage(65),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: SizeConfig.defaultSize),
          const AuthButton(auth: AuthMethods.google),
          const AuthButton(auth: AuthMethods.apple),
          const AuthButton(auth: AuthMethods.email),
          const AgreementCheck(),
          const AlreadyRedditor(),
          SizedBox(height: SizeConfig.defaultSize * 1.5),
        ],
      );
    },
  );
}

class AlreadyRedditor extends StatelessWidget {
  const AlreadyRedditor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Already a redditor? '),
        Text(
          'Log in',
          style:
              Theme.of(context).textTheme.bodyText1?.apply(color: Colors.blue),
        ),
      ],
    );
  }
}

class AgreementCheck extends StatefulWidget {
  const AgreementCheck({
    Key? key,
  }) : super(key: key);

  @override
  _AgreementCheckState createState() => _AgreementCheckState();
}

class _AgreementCheckState extends State<AgreementCheck> {
  Color textColor = Colors.white;
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        checked = !checked;
      }),
      onLongPressStart: (details) => setState(() {
        textColor = AppColors.moreLightGrey;
      }),
      onLongPressEnd: (details) => setState(() {
        textColor = Colors.white;
        checked = !checked;
      }),
      child: SizedBox(
        width: SizeConfig.screenWidthPercentage(85),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: Duration(milliseconds: 200),
              transitionBuilder: (child, animation) => ScaleTransition(
                scale: animation,
                child: child,
              ),
              child: Transform.scale(
                  scale: 0.8,
                  key: ValueKey(checked),
                  child: Checkbox(
                    fillColor: MaterialStateProperty.all(AppColors.iron),
                    checkColor: AppColors.darkGrey,
                    value: checked,
                    onChanged: (value) => setState(() {
                      checked = value!;
                    }),
                  )),
            ),
            Expanded(
                child: Text(
              'I agree to get emails about cool stuff on Reddit',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(color: textColor),
            ))
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Create an account to continue',
      style: Theme.of(context).textTheme.headline6?.apply(fontSizeFactor: 0.9),
    );
  }
}

class PoliciesText extends StatelessWidget {
  final double? width;
  final TextAlign textAlign;
  const PoliciesText({
    Key? key,
    this.width,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: RichText(
        textAlign: textAlign,
        text: TextSpan(
          text: 'By continuing, you agree to our ',
          children: [
            TextSpan(
              text: 'User Agreement ',
              style: Theme.of(context).textTheme.caption?.apply(
                    fontSizeFactor: 1.1,
                    color: Colors.blue,
                  ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => launchURL(userAgreementUrl),
            ),
            const TextSpan(text: 'and '),
            TextSpan(
              text: 'Privacy Policy',
              style: Theme.of(context).textTheme.caption?.apply(
                    fontSizeFactor: 1.1,
                    color: Colors.blue,
                  ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => launchURL(privacyPolicyUrl),
            ),
            const TextSpan(text: '.'),
          ],
          style: Theme.of(context).textTheme.caption?.apply(
                fontSizeFactor: 1.15,
                color: AppColors.iron,
              ),
        ),
      ),
    );
  }
}

final userAgreementUrl = 'https://www.redditinc.com/policies/user-agreement';
final privacyPolicyUrl = 'https://www.redditinc.com/policies/privacy-policy';

void launchURL(String url) async =>
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
