import 'package:flutter/material.dart';
import 'package:widgets/theme/app_colors.dart';
import 'package:widgets/theme/app_text_style.dart';

class CircularButtonWidget extends StatelessWidget {
  final String? title;
  final VoidCallback? onPressed;
  final Color? color;

  const CircularButtonWidget({
    Key? key,
    this.title,
    this.onPressed,
    this.color,
  }) : super(key: key);

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
