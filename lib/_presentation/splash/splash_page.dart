import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_clone/application/navigation_service.dart';
import 'package:reddit_clone/injection.dart';

import '../../application/auth/auth_bloc.dart';
import '../../routes.dart';
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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
            initial: (state) {},
            orElse: () => getIt<NavigationService>()
                .replaceAndNavigateTo(Routes.bottomNavPage));
      },
      child: Container(
        color: AppColors.splashBackground,
        child: Center(
          child: Row(
            children: [
              const Spacer(),
              SizedBox(
                width: SizeConfig.screenHeightPercentage(12),
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
