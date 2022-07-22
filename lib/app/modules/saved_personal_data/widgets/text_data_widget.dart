import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';

class TextDataWidget extends StatelessWidget {
  final String title;
  final String data;

  const TextDataWidget({super.key, required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: AppColors.purpleBlue,
              ),
            ),
            Expanded(
              child: Text(
                data,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
        const Divider(
          color: AppColors.ligthGrey,
          height: 30,
        ),
      ],
    );
  }
}
