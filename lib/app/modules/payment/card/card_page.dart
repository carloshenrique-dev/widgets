import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/themes/app_text_style.dart';
import 'package:widgets/app/core/ui/widgets/default_text_form_field_widget.dart';
import 'package:widgets/app/core/ui/widgets/retangular_button_widget.dart';

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
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.iceWhite,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: SingleChildScrollView(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
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
                              Validatorless.required(
                                  'Digite o número do cartão'),
                              Validatorless.number('Digite apenas números')
                            ]),
                            controller: _cardNumberController,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          DefaultTextFormWidget(
                            title: 'Nome impresso no cartão',
                            hintText: 'Digite aqui',
                            controller: _cardNameController,
                            validator: Validatorless.required(
                                'Informe o nome impresso no cartão'),
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
                                  textInputType: TextInputType.number,
                                  controller: _expirationDateController,
                                  validator: Validatorless.multiple([
                                    Validatorless.required(
                                        'Informe a validade'),
                                    Validatorless.number(
                                        'Digite apenas números')
                                  ]),
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
                                    Validatorless.number(
                                        'Digite apenas números')
                                  ]),
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
                              Validatorless.number('Digite apenas números')
                            ]),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Endereço de cobrança',
                            style: AppTextStyle.textLink,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          DefaultTextFormWidget(
                            title: 'CEP',
                            hintText: 'Digite aqui',
                            textInputType: TextInputType.number,
                            controller: _postalCodeController,
                            validator: Validatorless.multiple([
                              Validatorless.required('Informe seu CEP'),
                              Validatorless.number('Digite apenas números')
                            ]),
                          ),
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
                                  controller: _cityController,
                                  validator: Validatorless.required(
                                      'Informe sua cidade'),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: DefaultTextFormWidget(
                                  title: 'Estado',
                                  hintText: 'UF',
                                  controller: _stateController,
                                  validator: Validatorless.required(
                                      'Informe seu estado'),
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
                            controller: _neighborhoodController,
                            validator:
                                Validatorless.required('Informe seu bairro'),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          DefaultTextFormWidget(
                            title: 'Logradouro',
                            hintText: 'Rua, Av, Travessa...',
                            controller: _adressController,
                            validator: Validatorless.required(
                                'Informe seu logradouro'),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          DefaultTextFormWidget(
                            title: 'Número',
                            hintText: '000',
                            textInputType: TextInputType.number,
                            controller: _addressNumberController,
                            validator: Validatorless.required(
                                'Digite o número do seu endereço'),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          DefaultTextFormWidget(
                            title: 'Complemento',
                            hintText: 'Digite aqui',
                            textInputType: TextInputType.number,
                            controller: _addressLine2Controller,
                            validator: Validatorless.required(
                                'Digite seu complemento'),
                          ),
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
          )),
    );
  }
}
