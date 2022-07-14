import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_text_style.dart';
import 'app_colors.dart';

class AppUI {
  AppUI._();

  static final ThemeData themeData = ThemeData(
    backgroundColor: AppColors.white,
    scaffoldBackgroundColor: AppColors.white,
    tabBarTheme: const TabBarTheme(
      labelColor: AppColors.purpleBlue,
      labelPadding: EdgeInsets.symmetric(horizontal: 20),
      labelStyle: AppTextStyle.textLink,
      indicatorSize: TabBarIndicatorSize.label,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: AppColors.purpleBlue,
          width: 2,
        ),
      ),
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
      color: AppColors.white,
      titleTextStyle: AppTextStyle.appBarTitle,
    ),
    textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.grey),
    inputDecorationTheme: const InputDecorationTheme(
      hintStyle: TextStyle(color: Colors.grey),
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.purpleBlue),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      labelStyle: TextStyle(color: Colors.black),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),
  );
}
