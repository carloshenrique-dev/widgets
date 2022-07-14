import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyle {
  static const TextStyle buttonText = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle textFormFieldTitle = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle appBarTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.purpleBlue,
  );
  static const TextStyle commonText = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
  );
  static final TextStyle boldCommonText = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.grey[600],
  );
  static const TextStyle textLink = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.purpleBlue,
  );
}
