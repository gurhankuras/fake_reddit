import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '_presentation/core/app/colors.dart';
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
    );
  }

  ThemeData theme(BuildContext context) {
    return ThemeData(
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: AppColors.lightBlack,
      ),
      dialogBackgroundColor: AppColors.black,
      radioTheme:
          RadioThemeData(fillColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.white;
        }
        return AppColors.lightGrey;
      })),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: AppColors.lightGrey,
        backgroundColor: AppColors.lightBlack,
        type: BottomNavigationBarType.fixed,
        enableFeedback: false,
        selectedLabelStyle: TextStyle(fontSize: 0),
        unselectedLabelStyle: TextStyle(fontSize: 0),
      ),
      textTheme: Theme.of(context).textTheme.apply(
            bodyColor: Colors.white,
            displayColor: Colors.white,
          ),
      fontFamily: GoogleFonts.scada().fontFamily,
      scrollbarTheme: const ScrollbarThemeData(
          // showTrackOnHover: true,
          // thumbColor: MaterialStateProperty.resolveWith((states) => Colors.white),
          // trackColor: MaterialStateProperty.resolveWith((states) => Colors.white),
          // trackBorderColor:
          //     MaterialStateProperty.resolveWith((states) => Colors.white),
          ),
      primaryIconTheme: const IconThemeData(color: Colors.white),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      appBarTheme: const AppBarTheme(color: AppColors.lightBlack),
      scaffoldBackgroundColor: AppColors.black,
    );
  }
}
