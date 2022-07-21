import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:validatorless/validatorless.dart';
import 'package:widgets/app/core/ui/widgets/default_text_form_field_widget.dart';
import 'package:widgets/app/core/utils/formatters/cnpj_input_formatter.dart';

class CnpjWidget extends StatelessWidget {
  final Function(String?)? onSaved;

  const CnpjWidget({super.key, this.onSaved});

  @override
  Widget build(BuildContext context) {
    return DefaultTextFormWidget(
      title: 'CNPJ',
      hintText: 'Digite aqui',
      textInputType: TextInputType.number,
      validator: Validatorless.multiple([
        Validatorless.required('Informe seu CNPJ'),
        Validatorless.cnpj('Informe seu CNPJ'),
      ]),
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        CnpjInputFormatter(),
      ],
      onSaved: onSaved,
    );
  }
}
