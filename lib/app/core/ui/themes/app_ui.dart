import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_text_style.dart';
import 'app_colors.dart';

class AppUI {
  AppUI._();

  static final ThemeData themeData = ThemeData(
    //primarySwatch: AppColors.primarySwatch,
    //primaryColor: AppColors.primaryColor,
    //primaryColorLight: AppColors.primaryColorLight,
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      color: AppColors.blue,
      titleTextStyle: AppTextStyle.appBarTitle,
      backgroundColor: AppColors.white,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.green),
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
