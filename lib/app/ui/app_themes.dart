import 'package:antares_wallet/app/ui/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    accentColor: AppColors.accent,
    scaffoldBackgroundColor: AppColors.scaffoldBkg,
    fontFamily: 'Proxima_Nova',
  );
}
