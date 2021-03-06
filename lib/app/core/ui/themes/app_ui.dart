import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_text_style.dart';
import 'app_colors.dart';

class AppUI {
  AppUI._();

  static final ThemeData themeData = ThemeData(
    backgroundColor: AppColors.white,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    tabBarTheme: const TabBarTheme(
      labelColor: AppColors.purpleBlue,
      indicatorSize: TabBarIndicatorSize.label,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      color: AppColors.white,
      titleTextStyle: AppTextStyle.appBarTitle,
      iconTheme: const IconThemeData(color: AppColors.purpleBlue),
    ),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: AppColors.ligthGrey),
    bottomSheetTheme: const BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        ),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      hintStyle: TextStyle(color: AppColors.ligthGrey),
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.purpleBlue),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.ligthGrey),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.ligthGrey),
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
