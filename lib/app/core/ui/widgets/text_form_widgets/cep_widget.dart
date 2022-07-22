import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:validatorless/validatorless.dart';
import 'package:widgets/app/core/ui/widgets/text_form_widgets/default_text_form_field_widget.dart';
import 'package:widgets/app/core/utils/formatters/cep_input_formatter.dart';

class CepWidget extends StatelessWidget {
  final Function(String?)? onSaved;
  const CepWidget({super.key, required this.onSaved});

  @override
  Widget build(BuildContext context) {
    return DefaultTextFormWidget(
      title: 'CEP',
      hintText: 'Digite aqui',
      textInputType: TextInputType.number,
      validator: Validatorless.required('Informe seu CEP'),
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        CepInputFormatter(ponto: false),
      ],
      onSaved: onSaved,
    );
  }
}
