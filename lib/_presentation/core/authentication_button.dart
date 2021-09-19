import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utility/launch_url.dart';
import 'constants/assets.dart';
import 'constants/colors.dart';
import 'size_config.dart';

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
  final VoidCallback onPressed;
  const AuthButton({
    Key? key,
    required this.auth,
    this.width,
    required this.onPressed,
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
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
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

const userAgreementUrl = 'https://www.redditinc.com/policies/user-agreement';
const privacyPolicyUrl = 'https://www.redditinc.com/policies/privacy-policy';
