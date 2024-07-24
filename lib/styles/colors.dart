import 'package:flutter/material.dart';

Color primaryColor = const Color(0xFF8376FC);
Color primaryColorLight = primaryColor.withOpacity(0.11);
const Color primaryBlack = Color.fromRGBO(0, 0, 0, 1.0);

const Color successColor = Color(0xFF59B27F);
const Color warningColor = Color(0xFFFCC176);
const Color lightWarningColor = Color(0xFFFCEFD5);
const Color darkWarningColor = Color(0xFFE99903);
const Color errorColor = Color(0xFFD66464);

const Color backgroundColor = Color.fromRGBO(255, 255, 255, 1.0);
const Color titleBackgroundColor = Color(0xFFF0F3F7);
const Color dayTileBackgroundColor = Color(0xFFFAFAFA);

const Color textColor = Color(0xFF4D4D4D);
const Color textColorGrey = Color(0xFFAFAFAF);
const Color textColorDarkGrey = Color(0xFF838383);
const Color textColorLightGrey = Color(0xFFD4D2D2);

const Color inputBackgroundColor = Color(0xFFF9F9F9);
Color inputBorderColor = primaryColorLight;
Color inputBorderFocusColor = primaryColor;
const Color inputHintTextColor = Color(0xFF818181);

const Color dividerColor = Color(0xffe6e6e6);

const Color intercomColor = Color.fromRGBO(8, 21, 38, 1);

Color darken(Color color, [double amount = .1]) {
  assert(amount >= 0 && amount <= 1);

  final hsl = HSLColor.fromColor(color);
  final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

  return hslDark.toColor();
}

Color lighten(Color color, [double amount = .1]) {
  assert(amount >= 0 && amount <= 1);

  final hsl = HSLColor.fromColor(color);
  final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

  return hslLight.toColor();
}
