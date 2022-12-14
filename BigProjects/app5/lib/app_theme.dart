import 'package:app5/color_constants.dart';
import 'package:flutter/material.dart';

class Themes {
  static final lightTheme = ThemeData(
      colorScheme: const ColorScheme.light(
    primary: AppColors.lavender,
    onPrimary: Colors.black,
    secondary: AppColors.spaceCadet,
    background: AppColors.babyPink,
  ));

  static final darkTheme = ThemeData(
      colorScheme: const ColorScheme.dark(
    primary: Color.fromARGB(255, 225, 230, 236),
    secondary: AppColors.burgundy,
    onSecondary: AppColors.spaceCadet,
    background: AppColors.spaceCadet,
  ));
}
