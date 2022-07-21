import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';

class CustomInputTheme extends StatelessWidget {
  final Widget child;
  final Color hintColor;
  final Color focusedBorderColor;
  final Color enabledBorderColor;
  final Color disabledBorderColor;
  final Color labelStyleColor;
  final BorderRadius borderRadius;
  const CustomInputTheme({
    this.borderRadius = BorderRadius.zero,
    this.hintColor = AppColors.gray,
    this.focusedBorderColor = AppColors.gray,
    this.enabledBorderColor = AppColors.gray,
    this.disabledBorderColor = AppColors.gray,
    this.labelStyleColor = AppColors.black,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: TextStyle(
              color: hintColor,
            ),
            border: OutlineInputBorder(
              borderRadius: borderRadius,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: borderRadius,
              borderSide: BorderSide(
                color: focusedBorderColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: borderRadius,
              borderSide: BorderSide(
                color: enabledBorderColor,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: borderRadius,
              borderSide: BorderSide(
                color: disabledBorderColor,
              ),
            ),
            labelStyle: TextStyle(color: labelStyleColor),
          ),
        ),
        child: child);
  }
}
