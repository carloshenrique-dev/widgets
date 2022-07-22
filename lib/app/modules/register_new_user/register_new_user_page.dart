import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/button_widgets/button_with_icon_widget.dart';
import 'package:widgets/app/core/ui/widgets/container_register_widget/container_register_widget.dart';
import 'package:widgets/app/core/ui/widgets/button_widgets/retangular_button_widget.dart';
import 'package:widgets/app/core/ui/widgets/text_form_widgets/cpf_widget.dart';
import 'package:widgets/app/core/ui/widgets/text_form_widgets/phone_widget.dart';
import 'package:widgets/app/entities/register/register_new_user.dart';

class RegisterNewUserPage extends StatefulWidget {
  const RegisterNewUserPage({super.key});

  @override
  State<RegisterNewUserPage> createState() => _RegisterNewUserPageState();
}

class _RegisterNewUserPageState extends State<RegisterNewUserPage> {
  RegisterNewUser _model = RegisterNewUser();
  final _formKey = GlobalKey<FormState>();

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
                          textFormWidget1: CpfWidget(
                            onSave: (value) =>
                                _model = _model.copyWith(cpf: value),
                          ),
                          textFormWidget2: PhoneWidget(
                            onSave: (value) =>
                                _model = _model.copyWith(phone: value),
                          ),
                          onSaved: (value) =>
                              _model = _model.copyWith(farm: value),
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
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                        }
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
