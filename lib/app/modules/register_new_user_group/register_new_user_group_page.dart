import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/button_with_icon_widget.dart';
import 'package:widgets/app/core/ui/widgets/container_register_widget.dart';
import 'package:widgets/app/core/ui/widgets/default_text_form_field_widget.dart';
import 'package:widgets/app/core/ui/widgets/retangular_button_widget.dart';

class RegisterNewUserGroupPage extends StatefulWidget {
  const RegisterNewUserGroupPage({super.key});

  @override
  State<RegisterNewUserGroupPage> createState() =>
      _RegisterNewUserGroupPageState();
}

class _RegisterNewUserGroupPageState extends State<RegisterNewUserGroupPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: const Text('Cadastrar grupo'),
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
                          title: 'Novo grupo',
                          textFormWidget1: DefaultTextFormWidget(
                            title: 'Login',
                            hintText: 'E-mail',
                            textInputType: TextInputType.number,
                            controller: _emailController,
                            validator: Validatorless.multiple([
                              Validatorless.required('Informe seu CPF'),
                              Validatorless.email(
                                'Informe seu e-mail corretamente',
                              ),
                            ]),
                          ),
                          textFormWidget2: DefaultTextFormWidget(
                            controller: _passwordController,
                            hintText: 'Mínimo de 6 caracteres',
                            textInputType: TextInputType.number,
                            title: 'Senha',
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
