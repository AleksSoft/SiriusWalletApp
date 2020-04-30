import 'package:flutter/material.dart';

/// Contains useful consts to reduce boilerplate and duplicate code
class UIHelper {
  static const Widget verticalSpaceSmall = SizedBox(height: UISize.pSmall);
  static const Widget verticalSpaceMedium = SizedBox(height: UISize.pMedium);
  static const Widget verticalSpaceLarge = SizedBox(height: UISize.pLarge);
  static const Widget verticalSpaceExtraLarge =
      SizedBox(height: UISize.pExtraLarge);

  static const Widget horizontalSpaceSmall = SizedBox(width: UISize.pSmall);
  static const Widget horizontalSpaceMedium = SizedBox(width: UISize.pMedium);
  static const Widget horizontalSpaceLarge = SizedBox(width: UISize.pMedium);
  static const Widget horizontalSpaceExtraLarge =
      SizedBox(width: UISize.pExtraLarge);
}

class UISize {
  // Spacing constants (p = padding)
  static const double pSmall = 8.0;
  static const double pMedium = 16.0;
  static const double pLarge = 32.0;
  static const double pExtraLarge = 48.0;
}
