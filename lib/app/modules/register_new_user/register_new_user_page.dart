import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:validatorless/validatorless.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/button_with_icon_widget.dart';
import 'package:widgets/app/core/ui/widgets/container_register_widget.dart';
import 'package:widgets/app/core/ui/widgets/default_text_form_field_widget.dart';
import 'package:widgets/app/core/ui/widgets/retangular_button_widget.dart';
import 'package:widgets/app/core/utils/formatters/cpf_input_formatter.dart';

class RegisterNewUserPage extends StatefulWidget {
  const RegisterNewUserPage({super.key});

  @override
  State<RegisterNewUserPage> createState() => _RegisterNewUserPageState();
}

class _RegisterNewUserPageState extends State<RegisterNewUserPage> {
  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _cpfController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: const Text('Cadastrar usuário'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: constraints.maxWidth,
              minHeight: constraints.maxHeight,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Form(
                        key: _formKey,
                        child: ContainerRegisterWidget(
                          title: 'Novo usuário',
                          textFormWidget1: DefaultTextFormWidget(
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
                          textFormWidget2: DefaultTextFormWidget(
                            controller: _phoneController,
                            hintText: '(DDD) número',
                            textInputType: TextInputType.number,
                            title: 'Telefone',
                            validator:
                                Validatorless.required('Informe seu telefone'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: constraints.maxWidth * .5,
                        height: 45,
                        child: ButtonWithIconWidget(
                          onPressed: () {},
                          icon: Icons.add,
                          title: 'Adicionar mais',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: constraints.maxWidth,
                    height: 50,
                    child: RetangularButtonWidget(
                      title: 'Cadastrar',
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
      ),
    );
  }
}
