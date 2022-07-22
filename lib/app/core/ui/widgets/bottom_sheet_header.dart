import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class BottomSheetHeader extends StatelessWidget {
  final String title;
  const BottomSheetHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(
            color: AppColors.purpleBlue,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.close,
            size: 28,
            color: AppColors.purpleBlue,
          ),
        ),
      ],
    );
  }
}
