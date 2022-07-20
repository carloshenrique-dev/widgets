import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:validatorless/validatorless.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/address_widget/address_widget.dart';
import 'package:widgets/app/core/ui/widgets/default_text_form_field_widget.dart';
import 'package:widgets/app/core/ui/widgets/retangular_button_widget.dart';
import 'package:widgets/app/core/utils/formatters/cpf_input_formatter.dart';
import 'package:widgets/app/core/utils/formatters/expiration_date_formatter.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _cardNameController = TextEditingController();
  final TextEditingController _expirationDateController =
      TextEditingController();
  final TextEditingController _cvvController = TextEditingController();
  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _postalCodeController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _neighborhoodController = TextEditingController();
  final TextEditingController _adressController = TextEditingController();
  final TextEditingController _addressNumberController =
      TextEditingController();
  final TextEditingController _addressLine2Controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _cardNumberController.dispose();
    _cardNameController.dispose();
    _expirationDateController.dispose();
    _cvvController.dispose();
    _cpfController.dispose();
    _postalCodeController.dispose();
    _cityController.dispose();
    _stateController.dispose();
    _neighborhoodController.dispose();
    _adressController.dispose();
    _addressNumberController.dispose();
    _addressLine2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DefaultTextFormWidget(
                          title: 'Número do cartão',
                          hintText: 'Digite aqui',
                          validator: Validatorless.multiple([
                            Validatorless.required('Digite o número do cartão'),
                            Validatorless.number('Digite apenas números'),
                          ]),
                          controller: _cardNumberController,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(16),
                          ],
                          textInputType: TextInputType.number,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DefaultTextFormWidget(
                          title: 'Nome impresso no cartão',
                          hintText: 'Digite aqui',
                          controller: _cardNameController,
                          validator: Validatorless.required(
                            'Informe o nome impresso no cartão',
                          ),
                          textInputType: TextInputType.text,
                          inputFormatters: [
                            FilteringTextInputFormatter.deny(RegExp('[0-9]')),
                          ],
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
                                controller: _expirationDateController,
                                validator: Validatorless.required(
                                  'Informe a validade',
                                ),
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  ExpirationDateFormatter(),
                                ],
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
                                controller: _cvvController,
                                validator: Validatorless.multiple([
                                  Validatorless.required('Informe seu CVV'),
                                  Validatorless.number('Digite apenas números')
                                ]),
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(3),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DefaultTextFormWidget(
                          title: 'CPF',
                          hintText: 'Digite aqui',
                          textInputType: TextInputType.number,
                          controller: _cpfController,
                          validator: Validatorless.multiple([
                            Validatorless.required('Informe seu CPF'),
                            Validatorless.cpf('Informe seu CPF'),
                          ]),
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            CpfInputFormatter(),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AddressWidget(
                          postalCodeController: _postalCodeController,
                          cityController: _cityController,
                          stateController: _stateController,
                          neighborhoodController: _neighborhoodController,
                          adressController: _adressController,
                          addressNumberController: _addressNumberController,
                          addressLine2Controller: _addressLine2Controller,
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey[300],
                    height: 45,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Total',
                        style: TextStyle(
                          fontSize: 22,
                          color: AppColors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: const [
                          Text(
                            'R\$ ',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            '5.252,00',
                            style: TextStyle(
                              fontSize: 22,
                              color: AppColors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: size.width,
                    height: 50,
                    child: RetangularButtonWidget(
                      title: 'Pagar',
                      onPressed: () {
                        final formValid =
                            _formKey.currentState?.validate() ?? false;
                        if (formValid) {}
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
