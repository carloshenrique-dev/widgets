import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_text_style.dart';

class PasswordFormField extends StatefulWidget {
  final String? title;
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final void Function()? onPressed;
  const PasswordFormField({
    super.key,
    this.onPressed,
    this.validator,
    this.obscureText,
    this.title,
    this.hintText,
    this.controller,
  });

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.title ?? 'Senha',
            style: AppTextStyle.textFormFieldTitle,
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          obscureText: widget.obscureText == false ? true : false,
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: widget.hintText,
            suffixIcon: IconButton(
              onPressed: widget.onPressed,
              icon: Icon(widget.obscureText == true
                  ? Icons.visibility_off
                  : Icons.visibility),
            ),
          ),
          validator: widget.validator,
        ),
      ],
    );
  }
}
