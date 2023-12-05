import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static TextStyle pretendardStyle(double size, double? height) => TextStyle(
        fontFamily: 'pretendard',
        leadingDistribution: TextLeadingDistribution.even,
        letterSpacing: -0.02,
        fontSize: size,
        height: height == null ? null : height / size,
      );

  static TextStyle pretendardRegularStyle(double size, double? height) =>
      pretendardStyle(size, height).copyWith(
        fontWeight: FontWeight.w400,
      );

  static TextStyle pretendardMediumStyle(double size, double? height) =>
      pretendardStyle(size, height).copyWith(
        fontWeight: FontWeight.w500,
      );

  static TextStyle pretendardSemiBoldStyle(double size, double? height) =>
      pretendardStyle(size, height).copyWith(
        fontWeight: FontWeight.w600,
      );

  static TextStyle pretendardBoldStyle(double size, double? height) =>
      pretendardStyle(size, height).copyWith(
        fontWeight: FontWeight.w800,
      );

  static final TextStyle headlineBold1 = pretendardBoldStyle(24, 33);
  static final TextStyle headlineRegular1 = pretendardRegularStyle(24, 33);
  static final TextStyle headlineBold2 = pretendardBoldStyle(20, 24);
  static final TextStyle headlineRegular2 = pretendardRegularStyle(20, 24);
  static final TextStyle bodyBold1 = pretendardSemiBoldStyle(16, 19);
  static final TextStyle bodyRegular1 = pretendardSemiBoldStyle(16, 19);
  static final TextStyle bodyBold2 = pretendardRegularStyle(12, 14);
  static final TextStyle bodyRegular2 = pretendardRegularStyle(12, 14);
}
