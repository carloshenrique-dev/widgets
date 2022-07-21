import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/themes/app_text_style.dart';
import 'package:widgets/app/core/ui/widgets/default_text_form_field_widget.dart';
import 'package:widgets/app/core/ui/widgets/drop_down_form_widget/dropdown_widget.dart';

class ContainerRegisterWidget extends StatelessWidget {
  final String title;
  final List farms;
  final DefaultTextFormWidget textFormWidget1;
  final DefaultTextFormWidget textFormWidget2;
  final Function(String?)? onSaved;

  const ContainerRegisterWidget({
    super.key,
    this.farms = const [],
    required this.textFormWidget1,
    required this.textFormWidget2,
    required this.title,
    required this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyle.textLink,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Fazenda',
            style: TextStyle(
              fontSize: 17,
              color: Colors.grey,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 10,
          ),
          DropdownWidget(
            onSaved: onSaved,
          ),
          const SizedBox(
            height: 20,
          ),
          textFormWidget1,
          const SizedBox(
            height: 20,
          ),
          textFormWidget2,
        ],
      ),
    );
  }
}
