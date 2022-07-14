import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../modules/fields/fields_page.dart';
import '../themes/app_colors.dart';

class FarmTilePopupButton extends StatelessWidget {
  const FarmTilePopupButton({Key? key}) : super(key: key);

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
                'Dados da Fazenda',
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
          value: PopupOptions.Data,
          child: Row(
            children: const [
              Icon(FontAwesomeIcons.leaf),
              SizedBox(
                width: 20,
              ),
              Text(
                'Área de Cultivo',
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
