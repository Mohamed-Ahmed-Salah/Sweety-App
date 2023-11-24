import 'package:flutter/material.dart';
import 'package:sweety_app/core/constants/app_colors.dart';
import 'package:sweety_app/core/theme/appbar_theme.dart';
import 'package:sweety_app/core/theme/checkbox_theme.dart';
import 'package:sweety_app/core/theme/input_decoration_theme.dart';
import 'package:sweety_app/core/theme/nav_bar_theme.dart';

import 'button_theme.dart';


class CustomLightTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
       fontFamily: "Poppins",
      bottomNavigationBarTheme: lightBottomNavBarTheme,
      secondaryHeaderColor: AppColors.whiteColor,
      primarySwatch: Palette.primary,
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.whiteColor,
      appBarTheme: appBarLightTheme,
      iconTheme: const IconThemeData(color: AppColors.blackColor),
      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: AppColors.blackColor),
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColors.primaryColor,

      ),
      elevatedButtonTheme: elevatedButtonThemeData,
      outlinedButtonTheme: outlinedButtonTheme(),
      textButtonTheme: textButtonThemeData,
      inputDecorationTheme: lightInputDecorationTheme,
      checkboxTheme: checkboxThemeData,
      radioTheme: radioThemeData,

      // appBarTheme: appBarLightTheme,
      // scrollbarTheme: scrollbarThemeData,
      // dataTableTheme: dataTableLightThemeData,
      // tabBarTheme: CustomTabBarTheme.lightTheme(),
    );
  }
}