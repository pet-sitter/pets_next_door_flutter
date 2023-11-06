import 'package:flutter/material.dart';
import 'package:pets_next_door_flutter/src/constants/font_weight.dart';

Color get defaultColor => Colors.black;

class PNDTextStyles {
  TextStyle styleTT({
    Color? color,
    TextDecoration decoration = TextDecoration.none,
  }) =>
      TextStyle(
        fontFamily: 'defaultFont',
        color: color ?? defaultColor,
        fontSize: 32,
        fontWeight: PNDFontWeights.bold, //w700
        height: 40 / 32,
        letterSpacing: 0,
        decoration: decoration,
      );

  /// Headline
  ///
  TextStyle styleH0({
    Color? color,
    TextDecoration decoration = TextDecoration.none,
  }) =>
      TextStyle(
        fontFamily: 'defaultFont',
        color: color ?? defaultColor,
        fontSize: 28,
        fontWeight: PNDFontWeights.semiBold,
        height: 39 / 28,
        letterSpacing: 0,
        decoration: decoration,
      );

  /// Headline
  ///
  TextStyle styleH1({
    Color? color,
    TextDecoration decoration = TextDecoration.none,
  }) =>
      TextStyle(
        fontFamily: 'defaultFont',
        color: color ?? defaultColor,
        fontSize: 24,
        fontWeight: PNDFontWeights.semiBold,
        height: 34 / 24,
        letterSpacing: 0,
        decoration: decoration,
      );
}
