import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/themes/app_text_style.dart';

class CircularButtonWidget extends StatelessWidget {
  final String? title;
  final VoidCallback? onPressed;
  final Color? color;

  const CircularButtonWidget({
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
        primary: color ?? AppColors.green, // background
        onPrimary: Colors.white, // foreground
        textStyle: AppTextStyle.buttonText,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      onPressed: onPressed ?? () {},
      child: Text(
        title ?? 'Confirmar',
      ),
    );
  }
}
