import 'package:flutter/material.dart';
import 'package:metarizz_assignment/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray900,
      );
  static BoxDecoration get fillBluegray900 => BoxDecoration(
        color: appTheme.blueGray900.withOpacity(0.97),
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillYellow => BoxDecoration(
        color: appTheme.yellow50,
      );

  // Gradient decorations
  static BoxDecoration get gradientTealToBlack => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.53, -0.32),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.teal90000,
            appTheme.black90001,
          ],
        ),
      );
  static BoxDecoration get gradientTealToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.07),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.teal600,
            appTheme.gray900,
          ],
        ),
      );
  static BoxDecoration get gradientTealToGray900 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.07),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.teal600.withOpacity(0.11),
            appTheme.gray900.withOpacity(0),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlackF => BoxDecoration();
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderTL10 => BorderRadius.horizontal(
        left: Radius.circular(10.h),
      );
  static BorderRadius get customBorderTL15 => BorderRadius.vertical(
        top: Radius.circular(15.h),
      );
  static BorderRadius get customBorderTL5 => BorderRadius.horizontal(
        left: Radius.circular(5.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
