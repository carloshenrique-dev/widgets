import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_text_style.dart';

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
            style: AppTextStyle.textFormFieldTitle,
            textAlign: TextAlign.left,
          ),
        ),
        TextFormField(
          controller: controller,
          //validator: Validatorless.required('Nome obrigatório'),
        ),
      ],
    );
  }
}
