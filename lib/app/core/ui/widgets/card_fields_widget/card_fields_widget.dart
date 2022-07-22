import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:validatorless/validatorless.dart';
import 'package:widgets/app/core/ui/widgets/text_form_widgets/default_text_form_field_widget.dart';
import 'package:widgets/app/core/ui/widgets/text_form_widgets/cpf_widget.dart';
import 'package:widgets/app/core/utils/formatters/expiration_date_formatter.dart';

class CardFieldsWidget extends StatelessWidget {
  final Function(String?)? onSavedCardNumber;
  final Function(String?)? onSavedCardName;
  final Function(String?)? onSavedExpirationDate;
  final Function(String?)? onSavedCvv;
  final Function(String?)? onSavedCpf;

  const CardFieldsWidget({
    super.key,
    this.onSavedCardNumber,
    this.onSavedCardName,
    this.onSavedExpirationDate,
    this.onSavedCpf,
    this.onSavedCvv,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTextFormWidget(
          title: 'Número do cartão',
          hintText: 'Digite aqui',
          validator: Validatorless.multiple([
            Validatorless.required('Digite o número do cartão'),
            Validatorless.number('Digite apenas números'),
          ]),
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(16),
          ],
          textInputType: TextInputType.number,
          onSaved: onSavedCardNumber,
        ),
        const SizedBox(
          height: 20,
        ),
        DefaultTextFormWidget(
          title: 'Nome impresso no cartão',
          hintText: 'Digite aqui',
          validator: Validatorless.required(
            'Informe o nome impresso no cartão',
          ),
          textInputType: TextInputType.text,
          inputFormatters: [
            FilteringTextInputFormatter.deny(RegExp('[0-9]')),
          ],
          onSaved: onSavedCardName,
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: DefaultTextFormWidget(
                title: 'Validade',
                hintText: 'MM/AA',
                textInputType: TextInputType.datetime,
                validator: Validatorless.required(
                  'Informe a validade',
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  ExpirationDateFormatter(),
                ],
                onSaved: onSavedExpirationDate,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: DefaultTextFormWidget(
                title: 'CVV',
                hintText: '000',
                textInputType: TextInputType.number,
                validator: Validatorless.multiple([
                  Validatorless.required('Informe seu CVV'),
                  Validatorless.number('Digite apenas números')
                ]),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(3),
                ],
                onSaved: onSavedCvv,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        CpfWidget(onSave: onSavedCpf),
      ],
    );
  }
}
