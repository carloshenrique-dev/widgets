import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultTextFormWidget extends StatelessWidget {
  final String? title;
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final String? Function(String?)? validator;
  final TextInputAction textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String?)? onSaved;

  const DefaultTextFormWidget({
    super.key,
    this.validator,
    this.textInputType,
    this.title,
    this.hintText,
    this.controller,
    this.textInputAction = TextInputAction.next,
    this.inputFormatters,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title ?? 'Insira seus dados abaixo',
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
          onSaved: onSaved,
          decoration: InputDecoration(
            hintText: hintText,
          ),
          validator: validator,
          keyboardType: textInputType,
          textInputAction: textInputAction,
          inputFormatters: inputFormatters,
        ),
      ],
    );
  }
}
