import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class BottomSheetHeader extends StatelessWidget {
  final String title;
  final IconData? icon;
  const BottomSheetHeader({Key? key, required this.title, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: [
            Visibility(
              visible: icon != null,
              child: Icon(icon),
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(
                color: AppColors.purpleBlue,
                fontSize: 18,
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.close,
            color: AppColors.purpleBlue,
          ),
        ),
      ],
    );
  }
}
