import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:reddit_clone/application/navigation_service.dart';
import 'package:reddit_clone/injection.dart';
import 'package:reddit_clone/theme.dart';

import '_presentation/core/constants/colors.dart';
import '_presentation/core/reusable/scaled_drawer.dart';
import '_presentation/splash/splash_page.dart';
import 'application/main_page_bloc/main_page_bloc.dart';
import 'routes.dart';

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.black,
      statusBarIconBrightness: Brightness.light,
    ));

    return MaterialApp(
      // initialRoute: Routes.splashPage,
      onGenerateRoute: AppRouter.onGenerateRoute,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(context),
      home: MultiProvider(
        providers: [
          Provider(create: (context) => MyDrawerController()),
          BlocProvider(create: (context) => MainPageBloc(context: context)),
        ],
        child: const SplashPage(),
      ),
      navigatorKey: getIt<GlobalKey<NavigatorState>>(),
    );
  }
}
