import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../routes/app_router.gr.dart';
import '../../application/auth/auth_bloc.dart';
import '../../utility/log_init.dart';
import '../core/constants/assets.dart';
import '../core/constants/colors.dart';
import '../core/size_config.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    logInit(SplashPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          initial: (state) {},
          orElse: () {
            print(AutoRouter.of(context));
            context.router.replace(BottomNavRouter());
          },
        );
        // getIt<NavigationService>()
        //     .replaceAndNavigateTo(Routes.bottomNavPage)
        // );
      },
      child: Container(
        color: AppColors.splashBackground,
        child: Center(
          child: Row(
            children: [
              const Spacer(),
              SizedBox(
                width: SizeConfig.screenHeightPercentage(12),
                child: Image.asset(Assets.reddit_logo),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
