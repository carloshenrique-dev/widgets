import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/button_widgets/text_button_widget.dart';

class PasswordRowWidget extends StatelessWidget {
  final VoidCallback buildBottomSheet;
  const PasswordRowWidget({super.key, required this.buildBottomSheet});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Senha',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
            color: AppColors.purpleBlue,
          ),
        ),
        Row(
          children: [
            const Text(
              '********',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              width: 20,
            ),
            TextButtonWidget(
              onPressed: buildBottomSheet,
              title: 'Alterar',
            )
          ],
        ),
      ],
    );
  }
}
