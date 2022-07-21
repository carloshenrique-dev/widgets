import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';
import 'package:widgets/app/core/ui/widgets/default_text_form_field_widget.dart';

class EmailWidget extends DefaultTextFormWidget {
  final Function(String?)? onSave;
  const EmailWidget({super.key, required this.onSave});

  @override
  Function(String? value)? get onSaved => onSave;

  @override
  Widget build(BuildContext context) {
    return DefaultTextFormWidget(
      title: 'E-mail',
      hintText: 'Digite aqui',
      onSaved: onSaved,
      validator: Validatorless.multiple([
        Validatorless.email(
          'Informe o e-mail corretamente',
        ),
        Validatorless.required('Informe o e-mail')
      ]),
    );
  }
}
