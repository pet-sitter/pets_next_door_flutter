import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static TextStyle pretendardStyle(double size, double? height) => TextStyle(
        fontFamily: 'Pretendard',
        leadingDistribution: TextLeadingDistribution.even,
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

  static final TextStyle headlineBold1 = pretendardSemiBoldStyle(22, 29);
  static final TextStyle headlineBold2 = pretendardSemiBoldStyle(20, 24);

  static final TextStyle headlineMedium1 = pretendardMediumStyle(22, 29);
  static final TextStyle headlineMedium2 = pretendardMediumStyle(20, 24);

  static final TextStyle headlineRegular1 = pretendardRegularStyle(22, 29);
  static final TextStyle headlineRegular2 = pretendardRegularStyle(20, 24);

  static final TextStyle bodyBold1 = pretendardSemiBoldStyle(16, 19);
  static final TextStyle bodyBold2 = pretendardSemiBoldStyle(14, 17);
  static final TextStyle bodyBold3 = pretendardSemiBoldStyle(12, 14);

  static final TextStyle bodyRegular1 = pretendardRegularStyle(16, 19);
  static final TextStyle bodyRegular2 = pretendardRegularStyle(14, 17);
  static final TextStyle bodyRegular3 = pretendardRegularStyle(12, 14);
}
