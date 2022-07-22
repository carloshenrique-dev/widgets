import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:validatorless/validatorless.dart';
import 'package:widgets/app/core/ui/widgets/text_form_widgets/default_text_form_field_widget.dart';
import 'package:widgets/app/core/utils/formatters/cpf_input_formatter.dart';

class CpfWidget extends DefaultTextFormWidget {
  final Function(String?)? onSave;
  const CpfWidget({super.key, required this.onSave});

  @override
  Function(String? value)? get onSaved => onSave;

  @override
  Widget build(BuildContext context) {
    return DefaultTextFormWidget(
      title: 'CPF',
      hintText: 'Digite aqui',
      textInputType: TextInputType.number,
      onSaved: onSaved,
      validator: Validatorless.multiple([
        Validatorless.required('Informe seu CPF'),
        Validatorless.cpf('Informe seu CPF'),
      ]),
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        CpfInputFormatter(),
      ],
    );
  }
}
