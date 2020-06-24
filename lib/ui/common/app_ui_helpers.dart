import 'package:antares_wallet/ui/common/app_sizes.dart';
import 'package:flutter/material.dart';

class AppUiHelpers {
  // vertical space
  static const SizedBox vSpaceExtraSmall =
      SizedBox(height: AppSizes.extraSmall);
  static const SizedBox vSpaceSmall = const SizedBox(height: AppSizes.small);
  static const SizedBox vSpaceMedium = const SizedBox(height: AppSizes.medium);
  static const SizedBox vSpaceLarge = const SizedBox(height: AppSizes.medium);
  static const SizedBox vSpaceExtraLarge =
      const SizedBox(height: AppSizes.extraLarge);

  // horizontal space
  static const SizedBox hSpaceExtraSmall =
      const SizedBox(width: AppSizes.extraSmall);
  static const SizedBox hSpaceSmall = const SizedBox(width: AppSizes.small);
  static const SizedBox hSpaceMedium = const SizedBox(width: AppSizes.medium);
  static const SizedBox hSpaceLarge = const SizedBox(width: AppSizes.medium);
  static const SizedBox hSpaceExtraLarge =
      const SizedBox(width: AppSizes.extraLarge);
}