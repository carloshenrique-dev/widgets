import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Dados Pessoais',
          style: TextStyle(
            color: AppColors.green,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
        IconButton(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: const Icon(
            Icons.edit_outlined,
            color: AppColors.green,
          ),
        ),
      ],
    );
  }
}
