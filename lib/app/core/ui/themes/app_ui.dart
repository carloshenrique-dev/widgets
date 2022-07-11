import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_text_style.dart';
import 'app_colors.dart';

class AppUI {
  AppUI._();

  static final ThemeData themeData = ThemeData(
    backgroundColor: AppColors.white,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
      color: AppColors.white,
      titleTextStyle: AppTextStyle.appBarTitle,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      hintStyle: TextStyle(color: Colors.grey),
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.blue),
      ),
      enabledBorder: OutlineInputBorder(
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
