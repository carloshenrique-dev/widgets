import 'package:flutter/material.dart';

class DefaultTextFormWidget extends StatelessWidget {
  final String? title;
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final String? Function(String?)? validator;
  const DefaultTextFormWidget({
    super.key,
    this.validator,
    this.textInputType,
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
            title ?? 'CPF/Usuario',
            style: const TextStyle(
              fontSize: 17,
              color: Colors.grey,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
          ),
          validator: validator,
          keyboardType: textInputType,
        ),
      ],
    );
  }
}
