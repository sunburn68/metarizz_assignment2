import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeInterGreen600 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.green600,
      );
  static get bodyLargeYellow5001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.yellow5001,
      );
  static get bodyMediumInterTeal90001 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.teal90001,
        fontSize: 13.fSize,
      );
  // Label text style
  static get labelLargeBluegray600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray600,
      );
  static get labelLargeBluegray70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray70001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeGreen600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.green600,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGreenA200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.greenA200,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeTeal60002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.teal60002,
        fontSize: 12.fSize,
      );
  static get labelLargeTeal900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.teal900,
      );
  static get labelLargeTeal90001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.teal90001,
      );
  static get labelLargeTeal90002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.teal90002,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeTealA10002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.tealA10002,
      );
  static get labelLargeff003d2c => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF003D2C),
      );
  static get labelLargeff005940 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF005940),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeff007f5b => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF007F5B),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeff00a879 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF00A879),
      );
  static get labelLargeff0d4936 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF0D4936),
      );
  static get labelLargeff408873 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF408873),
      );
  static get labelLargeff43735e => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF43735E),
      );
  static get labelLargeff93ffe0 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF93FFE0),
      );
  static get labelMediumBold => theme.textTheme.labelMedium!.copyWith(
        fontSize: 10.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumGray400 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray400,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumTeal90002 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.teal90002,
        fontSize: 10.fSize,
      );
  static get labelMediumTeal90003 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.teal90003,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumTealA10001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.tealA10001,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumTealA10001Medium =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.tealA10001.withOpacity(0.5),
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumTealA10002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.tealA10002,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallTeal300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.teal300,
      );
  static get titleSmallTeal300Bold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.teal300,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallTeal90002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.teal90002,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallTealA10001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.tealA10001,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get lexend {
    return copyWith(
      fontFamily: 'Lexend',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get lohitDevanagari {
    return copyWith(
      fontFamily: 'Lohit Devanagari',
    );
  }
}
