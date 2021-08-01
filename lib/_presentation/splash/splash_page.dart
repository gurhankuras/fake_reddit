import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_clone/_presentation/core/app/colors.dart';
import 'package:reddit_clone/_presentation/core/size_config.dart';
import 'package:reddit_clone/routes.dart';
import '../../application/auth/auth_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    print(MediaQuery.of(context).devicePixelRatio);
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          initial: (state) {},
          orElse: () =>
              Navigator.of(context).pushReplacementNamed(Routes.mainPage),
        );
      },
      child: Container(
        color: AppColors.splashBackground,
        child: Center(
          child: Row(
            children: [
              const Spacer(),
              SizedBox(
                width: SizeConfig.screenHeightPercentage(12)
                //  *
                //     MediaQuery.of(context).devicePixelRatio /
                //     2.65,
                ,
                child: Image.asset(
                  'assets/reddit-logo.png',
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
