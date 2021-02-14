import 'package:flutter/material.dart';
import 'package:sawamall/r.g.dart';

import 'colors.dart';

final ThemeData themeData = new ThemeData(
    fontFamily: R.fontFamily.cairo,
    brightness: Brightness.light,
    primarySwatch: MaterialColor(AppColors.purple[500].value, AppColors.purple),
    primaryColor: AppColors.colorPrimary,
    primaryColorBrightness: Brightness.light,
    accentColor: AppColors.purple[500],
    accentColorBrightness: Brightness.light,
  textTheme: TextTheme(
    headline6:  TextStyle(
      fontSize: 72,
      fontWeight: FontWeight.w500,
      color: AppColors.textPrimary,
    ),
    subtitle1: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: AppColors.textPrimary,
    ),

    bodyText1: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.textPrimary,
    ),
  ),
);


final ThemeData themeDataDark = ThemeData(
  fontFamily: R.fontFamily.cairo,
  brightness: Brightness.dark,
  primaryColor: AppColors.colorPrimary,
  primaryColorBrightness: Brightness.dark,
  accentColor: AppColors.purple[500],
  accentColorBrightness: Brightness.dark,
);