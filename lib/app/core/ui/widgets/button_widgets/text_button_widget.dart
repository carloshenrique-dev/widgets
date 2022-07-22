import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';

class TextButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Color textColor;
  const TextButtonWidget({
    super.key,
    required this.onPressed,
    required this.title,
    this.textColor = AppColors.purpleBlue,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
        title,
        style: TextStyle(color: textColor, fontSize: 16),
      ),
    );
  }
}
