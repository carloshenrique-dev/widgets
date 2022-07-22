import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../themes/app_colors.dart';

class UserPopupMenuButton extends StatelessWidget {
  final VoidCallback onTap;
  const UserPopupMenuButton({required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.more_vert, color: AppColors.purpleBlue),
      offset: const Offset(-15, 45),
      onSelected: (value) {
        if (value == 0) {
          onTap();
        }
      },
      itemBuilder: (_) => [
        PopupMenuItem(
          height: 50,
          padding: const EdgeInsets.all(10),
          value: 0,
          enabled: true,
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(Icons.person_outline, color: AppColors.purpleBlue),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Nível de acesso',
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
        ),
        PopupMenuItem(
          height: 50,
          padding: const EdgeInsets.all(10),
          value: 1,
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
          value: 2,
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
