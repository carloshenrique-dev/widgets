import 'package:flutter/material.dart';

import '../../../modules/fields/fields_page.dart';
import '../themes/app_colors.dart';

class TilePopupButton extends StatelessWidget {
  const TilePopupButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.more_vert),
      itemBuilder: (_) => [
        PopupMenuItem(
          height: 50,
          padding: const EdgeInsets.all(10),
          value: PopupOptions.Data,
          child: Row(
            children: const [
              Icon(Icons.data_thresholding),
              SizedBox(
                width: 20,
              ),
              Text(
                'Dados do Talhão',
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
          value: PopupOptions.Remove,
          child: Row(
            children: const [
              Icon(Icons.delete_rounded, color: Colors.red),
              SizedBox(
                width: 20,
              ),
              Text(
                'Remover',
                style: TextStyle(
                  color: Colors.red,
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
