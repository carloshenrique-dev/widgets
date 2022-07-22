import 'package:flutter/material.dart';
import '../../../modules/fields/fields_page.dart';
import '../themes/app_colors.dart';

class FinancePopupMenuButton extends StatelessWidget {
  const FinancePopupMenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.more_vert, color: AppColors.purpleBlue),
      offset: const Offset(-15, 45),
      itemBuilder: (_) => [
        PopupMenuItem(
          height: 50,
          padding: const EdgeInsets.all(10),
          value: PopupOptions.data,
          child: Row(
            children: const [
              Icon(Icons.insert_drive_file_outlined),
              SizedBox(
                width: 20,
              ),
              Text(
                'Dados da Compra',
                style: TextStyle(
                  color: AppColors.purpleBlue,
                  fontSize: 17,
                ),
              ),
            ],
          ),
          onTap: () {},
        ),
        PopupMenuItem(
          height: 50,
          padding: const EdgeInsets.all(10),
          value: PopupOptions.remove,
          child: Row(
            children: const [
              Icon(Icons.attach_money_outlined),
              SizedBox(
                width: 20,
              ),
              Text(
                'Fatura',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ],
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
