import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/themes/app_text_style.dart';

class RetangularButtonWidget extends StatelessWidget {
  final String? title;
  final VoidCallback? onPressed;
  final Color? color;

  const RetangularButtonWidget({
    super.key,
    this.title,
    this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: color ?? AppColors.purpleBlue, // background
        onPrimary: Colors.white, // foreground
        textStyle: AppTextStyle.buttonText,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onPressed: onPressed ?? () {},
      child: Text(
        title ?? 'Entrar',
      ),
    );
  }
}
