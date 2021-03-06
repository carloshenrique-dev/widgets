import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:validatorless/validatorless.dart';
import 'package:widgets/app/core/ui/themes/app_text_style.dart';
import 'package:widgets/app/core/ui/widgets/text_form_widgets/default_text_form_field_widget.dart';
import 'package:widgets/app/core/ui/widgets/text_form_widgets/cep_widget.dart';

class AddressWidget extends StatelessWidget {
  final TextEditingController? postalCodeController;
  final TextEditingController? cityController;
  final TextEditingController? stateController;
  final TextEditingController? neighborhoodController;
  final TextEditingController? adressController;
  final TextEditingController? addressNumberController;
  final TextEditingController? addressLine2Controller;
  final Function(String?)? onSavedPostalCode;
  final Function(String?)? onSavedCity;
  final Function(String?)? onSavedState;
  final Function(String?)? onSavedNeighborhood;
  final Function(String?)? onSavedAdress;
  final Function(String?)? onSavedAddressNumber;
  final Function(String?)? onSavedAddressLine2;

  const AddressWidget({
    super.key,
    this.postalCodeController,
    this.cityController,
    this.stateController,
    this.neighborhoodController,
    this.adressController,
    this.addressNumberController,
    this.addressLine2Controller,
    this.onSavedPostalCode,
    this.onSavedCity,
    this.onSavedState,
    this.onSavedNeighborhood,
    this.onSavedAdress,
    this.onSavedAddressNumber,
    this.onSavedAddressLine2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Endereço',
          style: AppTextStyle.textLink,
        ),
        const SizedBox(
          height: 20,
        ),
        CepWidget(onSaved: onSavedPostalCode),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: DefaultTextFormWidget(
                title: 'Cidade',
                hintText: 'Digite aqui',
                controller: cityController,
                validator: Validatorless.required(
                  'Informe sua cidade',
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.deny(
                    RegExp('[0-9]'),
                  ),
                ],
                textInputType: TextInputType.text,
                onSaved: onSavedCity,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: DefaultTextFormWidget(
                title: 'Estado',
                hintText: 'UF',
                controller: stateController,
                validator: Validatorless.required(
                  'Informe seu estado',
                ),
                textInputType: TextInputType.text,
                inputFormatters: [
                  FilteringTextInputFormatter.deny(
                    RegExp('[0-9]'),
                  ),
                  LengthLimitingTextInputFormatter(2),
                ],
                onSaved: onSavedState,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        DefaultTextFormWidget(
          title: 'Bairro',
          hintText: 'Digite aqui',
          controller: neighborhoodController,
          validator: Validatorless.required('Informe seu bairro'),
          inputFormatters: [
            FilteringTextInputFormatter.deny(RegExp('[0-9]')),
          ],
          textInputType: TextInputType.text,
          onSaved: onSavedNeighborhood,
        ),
        const SizedBox(
          height: 20,
        ),
        DefaultTextFormWidget(
          title: 'Logradouro',
          hintText: 'Rua, Av, Travessa...',
          controller: adressController,
          validator: Validatorless.required('Informe seu logradouro'),
          inputFormatters: [
            FilteringTextInputFormatter.deny(RegExp('[0-9]')),
          ],
          textInputType: TextInputType.text,
          onSaved: onSavedAdress,
        ),
        const SizedBox(
          height: 20,
        ),
        DefaultTextFormWidget(
          title: 'Número',
          hintText: '000',
          textInputType: TextInputType.number,
          controller: addressNumberController,
          validator: Validatorless.multiple([
            Validatorless.required(
              'Digite o número do seu endereço',
            ),
            Validatorless.number('Digite apenas números')
          ]),
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(6),
          ],
          onSaved: onSavedAddressNumber,
        ),
        const SizedBox(
          height: 20,
        ),
        DefaultTextFormWidget(
          title: 'Complemento',
          hintText: 'Digite aqui',
          controller: addressLine2Controller,
          validator: Validatorless.required('Digite seu complemento'),
          inputFormatters: [
            FilteringTextInputFormatter.deny(RegExp('[0-9]')),
          ],
          textInputType: TextInputType.text,
          onSaved: onSavedAddressLine2,
        )
      ],
    );
  }
}
