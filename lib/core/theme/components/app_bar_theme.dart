part of '../app_theme.dart';

abstract class _AppBarTheme {
  static final light = AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    elevation: 0,
    scrolledUnderElevation: 0,
    centerTitle: false,
    titleTextStyle: AppTextStyle.headlineBold2.copyWith(
      color: AppColor().black,
    ),
  );
}
