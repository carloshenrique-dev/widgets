import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:validatorless/validatorless.dart';
import 'package:widgets/app/core/ui/widgets/text_form_widgets/default_text_form_field_widget.dart';
import 'package:widgets/app/core/utils/formatters/data_input_formatter.dart';

class BirthDateWidget extends StatelessWidget {
  final Function(String?)? onSaved;
  const BirthDateWidget({super.key, required this.onSaved});

  @override
  Widget build(BuildContext context) {
    return DefaultTextFormWidget(
      title: 'Data de nascimento',
      hintText: 'DD/MM/AAAA',
      validator: Validatorless.required(
        'Data de nascimento é obrigatória',
      ),
      textInputType: TextInputType.number,
      onSaved: onSaved,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        DataInputFormatter(),
      ],
    );
  }
}
