import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../modules/fields/fields_page.dart';
import '../themes/app_colors.dart';

class UserPopupMenuButton extends StatelessWidget {
  const UserPopupMenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.more_vert, color: AppColors.purpleBlue),
      offset: const Offset(-15, 45),
      itemBuilder: (_) => [
        PopupMenuItem(
          height: 50,
          padding: const EdgeInsets.all(10),
          value: PopupOptions.Data,
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(Icons.key_outlined, color: AppColors.purpleBlue),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Trocar Senha',
                    style: TextStyle(
                      color: AppColors.purpleBlue,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Divider(height: 2, color: AppColors.lightGray),
            ],
          ),
          onTap: () {},
        ),
        PopupMenuItem(
          height: 50,
          padding: const EdgeInsets.all(10),
          value: PopupOptions.Remove,
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(Icons.pause_circle_outline, color: AppColors.purpleBlue),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Suspender',
                    style: TextStyle(
                      fontSize: 17,
                      color: AppColors.purpleBlue,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Divider(height: 2, color: AppColors.lightGray),
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
              Icon(Icons.backspace_outlined, color: AppColors.red),
              SizedBox(
                width: 20,
              ),
              Text(
                'Remover',
                style: TextStyle(
                  fontSize: 17,
                  color: AppColors.red,
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
