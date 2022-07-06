import 'package:flutter/material.dart';
import 'package:widgets/theme/app_colors.dart';
import 'package:widgets/theme/app_text_style.dart';

class DefaultTextFormWidget extends StatelessWidget {
  final String? title;
  final TextEditingController? controller;
  const DefaultTextFormWidget({
    super.key,
    this.title,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title ?? 'CPF/Usuario',
            style: AppTextStyle.textFormFieldTitle,
            textAlign: TextAlign.left,
          ),
        ),
        TextFormField(
          controller: controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.green),
            ),
          ),
          //validator: Validatorless.required('Nome obrigatório'),
        ),
      ],
    );
  }
}
