// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

class DefaultTextFormWidget extends StatelessWidget {
  final String? title;
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const DefaultTextFormWidget({
    super.key,
    this.title,
    this.controller,
    this.hintText,
    this.validator,
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
          //validator: Validatorless.required('Nome obrigatório'),
        ),
      ],
    );
  }
}
