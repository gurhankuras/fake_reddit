import 'package:flutter/material.dart';
import 'package:reddit_clone/_presentation/core/authentication_button.dart';
import 'package:reddit_clone/_presentation/core/size_config.dart';

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
          AuthButton(auth: AuthMethods.google, onPressed: () {}),
          AuthButton(auth: AuthMethods.apple, onPressed: () {}),
          AuthButton(auth: AuthMethods.email, onPressed: () {}),
          const AgreementCheck(),
          const AlreadyRedditor(),
          SizedBox(height: SizeConfig.defaultSize * 1.5),
        ],
      );
    },
  );
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
