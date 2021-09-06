import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reddit_clone/_presentation/core/constants/colors.dart';

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
    // fontFamily: GoogleFonts.scada().fontFamily,
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
