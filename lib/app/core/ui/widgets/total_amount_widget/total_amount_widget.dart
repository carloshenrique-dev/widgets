import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';

class TotalAmountWidget extends StatelessWidget {
  const TotalAmountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Total',
          style: TextStyle(
            fontSize: 22,
            color: AppColors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: const [
            Text(
              'R\$ ',
              style: TextStyle(
                fontSize: 22,
                color: Colors.grey,
              ),
            ),
            Text(
              '5.252,00',
              style: TextStyle(
                fontSize: 22,
                color: AppColors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
