// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:widgets/theme/app_colors.dart';

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
            style: const TextStyle(
              fontSize: 17,
              color: Colors.grey,
            ),
            // style: AppTextStyle.textFormFieldTitle,
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.blue),
            ),
          ),
          //validator: Validatorless.required('Nome obrigatório'),
        ),
      ],
    );
  }
}
