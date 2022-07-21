import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:validatorless/validatorless.dart';
import 'package:widgets/app/core/ui/widgets/default_text_form_field_widget.dart';
import 'package:widgets/app/core/utils/formatters/phone_input_formatter.dart';

class PhoneWidget extends DefaultTextFormWidget {
  final Function(String?)? onSave;
  const PhoneWidget({super.key, required this.onSave});

  @override
  Function(String? value)? get onSaved => onSave;

  @override
  Widget build(BuildContext context) {
    return DefaultTextFormWidget(
      title: 'Telefone',
      hintText: '(DDD) Número',
      validator: Validatorless.required(
        'Telefone é obrigatório',
      ),
      onSaved: onSaved,
      textInputType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        PhoneInputFormatter(),
      ],
    );
  }
}
