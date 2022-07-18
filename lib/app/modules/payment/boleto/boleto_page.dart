import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:validatorless/validatorless.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/default_text_form_field_widget.dart';
import 'package:widgets/app/core/ui/widgets/retangular_button_widget.dart';
import 'package:widgets/app/core/utils/formatters/cpf_input_formatter.dart';

class BoletoPage extends StatefulWidget {
  const BoletoPage({super.key});

  @override
  State<BoletoPage> createState() => _BoletoPageState();
}

class _BoletoPageState extends State<BoletoPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _cpfController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _cpfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      DefaultTextFormWidget(
                        title: 'Nome e Sobrenome',
                        hintText: 'Digite aqui',
                        validator: Validatorless.required('Digite seu nome'),
                        controller: _nameController,
                        textInputType: TextInputType.text,
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp('[0-9]')),
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
                    title: 'Gerar Boleto',
                    onPressed: () {
                      final formValid =
                          _formKey.currentState?.validate() ?? false;
                      if (formValid) {}
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
