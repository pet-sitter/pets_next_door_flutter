import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pets_next_door_flutter/core/constants/text_style.dart';
import 'package:pets_next_door_flutter/core/theme/extension/app_color.dart';

part 'components/app_bar_theme.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    splashFactory: NoSplash.splashFactory,
    textTheme: ThemeData().textTheme.apply(
          fontFamily: 'pretendard',
          bodyColor: AppColor().black,
          displayColor: AppColor().black,
        ),
    // filledButtonTheme: _FilledButtonTheme.light,
    // inputDecorationTheme: _InputDecorationTheme.light,
    appBarTheme: _AppBarTheme.light,
    extensions: <ThemeExtension<dynamic>>[
      AppColor(),
    ],
  );
}
