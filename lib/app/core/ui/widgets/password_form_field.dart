import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_text_style.dart';

class PasswordFormField extends StatelessWidget {
  final String? title;
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool obscureText;
  final void Function()? onPressed;
  const PasswordFormField({
    super.key,
    this.onPressed,
    this.validator,
    this.obscureText = false,
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
            title ?? 'Senha',
            style: AppTextStyle.textFormFieldTitle,
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          obscureText: !obscureText || true,
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: IconButton(
              onPressed: onPressed,
              icon: Icon(
                obscureText == true ? Icons.visibility_off : Icons.visibility,
              ),
            ),
          ),
          validator: validator,
        ),
      ],
    );
  }
}
