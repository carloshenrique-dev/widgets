import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const CircleAvatar(
          backgroundColor: AppColors.backgroundColor,
          radius: 40,
          child: Icon(
            Icons.person_outlined,
            size: 40,
            color: AppColors.purpleBlue,
          ),
        ),
        Positioned(
          top: -18,
          left: 50,
          child: Container(
            width: 40,
            decoration: const BoxDecoration(
              color: AppColors.purpleBlue,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(
                Icons.photo_camera_outlined,
                size: 20,
                color: AppColors.white,
              ),
              onPressed: () {
                debugPrint('teste');
              },
            ),
          ),
        ),
      ],
    );
  }
}
