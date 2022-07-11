import 'package:flutter/material.dart';
import 'package:widgets/theme/app_colors.dart';
import 'package:widgets/theme/app_text_style.dart';

class DefaultTextFormWidget extends StatelessWidget {
  final String? title;
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const DefaultTextFormWidget({
    super.key,
    this.validator,
    this.title,
    this.hintText,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title ?? 'CPF/Usuário',
            style: AppTextStyle.textFormFieldTitle,
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.green),
            ),
          ),
          validator: validator,
        ),
      ],
    );
  }
}
