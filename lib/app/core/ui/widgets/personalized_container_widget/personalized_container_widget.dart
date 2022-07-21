import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';

class PersonalizedContainerWidget extends StatelessWidget {
  final Widget widget;

  const PersonalizedContainerWidget({
    super.key,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: widget,
        ),
      ),
    );
  }
}
