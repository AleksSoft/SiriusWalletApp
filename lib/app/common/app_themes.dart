import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemes {
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    accentColor: AppColors.accent,
    scaffoldBackgroundColor: AppColors.scaffoldBkg,
    fontFamily: 'Proxima_Nova',
  );
}