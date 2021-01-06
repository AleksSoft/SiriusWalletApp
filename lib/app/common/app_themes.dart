import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

abstract class AppThemes {
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    accentColor: AppColors.accent,
    scaffoldBackgroundColor: AppColors.scaffoldBkg,
    textTheme: GoogleFonts.montserratTextTheme(Get.textTheme),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.accent,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedLabelStyle: TextStyle(color: AppColors.dark),
      selectedLabelStyle: TextStyle(color: AppColors.accent),
      selectedIconTheme: IconThemeData(color: AppColors.accent),
      unselectedIconTheme: IconThemeData(color: AppColors.dark),
    ),
  );
}
