import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/size_config.dart';
import '../../../routes.dart';

import '../../../application/auth/auth_bloc.dart';

class HomeTabPage extends StatelessWidget {
  const HomeTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.maybeMap(
          authenticated: (state) => const Center(child: Text('Content')),
          orElse: () => const NotLoggedInHomeTabBody(),
        );
      },
    );
  }
}

class NotLoggedInHomeTabBody extends StatelessWidget {
  const NotLoggedInHomeTabBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: SizedBox(
          width: SizeConfig.screenWidthPercentage(60),
          child: Column(
            children: [
              const IntroEntry(
                image: 'assets/png1.png',
                title: 'Welcome!',
                text: "There's a reddit community for every topic imaginable! ",
              ),
              const IntroEntry(
                image: 'assets/png2.png',
                title: 'Vote',
                text:
                    "on posts and help communities lift the best content to the top! ",
              ),
              const IntroEntry(
                image: 'assets/png3.png',
                title: 'Join',
                text: "communities to fill this home feed with fresh posts",
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(Routes.signupPage),
                  child: Text('SIGN UP'),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                  ),
                ),
              ),
              TextButton(
                onPressed: () =>
                    Navigator.of(context).pushNamed(Routes.loginPage),
                child: Text('LOG IN'),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IntroEntry extends StatelessWidget {
  final String image;
  final String text;
  final String title;
  const IntroEntry({
    Key? key,
    required this.image,
    required this.text,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 100,
          ),
          SizedBox(width: SizeConfig.screenWidthPercentage(4)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyText1?.apply(
                        fontWeightDelta: 2,
                        fontSizeFactor: 1.15,
                      ),
                ),
                Text(
                  text,
                  style: TextStyle(height: 1.2),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
