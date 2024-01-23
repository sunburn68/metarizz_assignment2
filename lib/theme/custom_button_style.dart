import 'dart:ui';
import 'package:metarizz_assignment/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Gradient button style
  static BoxDecoration get gradientBlueGrayToTealDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(5.h),
        gradient: LinearGradient(
          begin: Alignment(0.53, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.blueGray200.withOpacity(0.2),
            appTheme.teal200.withOpacity(0.2),
          ],
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlackF => ElevatedButton.styleFrom(
        backgroundColor: appTheme.tealA200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.h),
        ),
        shadowColor: appTheme.black9003f,
        elevation: 4,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
