import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/button_widgets/button_with_icon_widget.dart';
import 'package:widgets/app/core/ui/widgets/container_register_widget/container_register_widget.dart';
import 'package:widgets/app/core/ui/widgets/text_form_widgets/default_text_form_field_widget.dart';
import 'package:widgets/app/core/ui/widgets/button_widgets/retangular_button_widget.dart';
import 'package:widgets/app/core/ui/widgets/text_form_widgets/email_widget.dart';
import 'package:widgets/app/entities/register/register_new_group.dart';

class RegisterNewUserGroupPage extends StatefulWidget {
  const RegisterNewUserGroupPage({super.key});

  @override
  State<RegisterNewUserGroupPage> createState() =>
      _RegisterNewUserGroupPageState();
}

class _RegisterNewUserGroupPageState extends State<RegisterNewUserGroupPage> {
  RegisterNewGroup _model = RegisterNewGroup();

  final _formKey = GlobalKey<FormState>();

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
                          textFormWidget1: EmailWidget(
                            onSave: (value) =>
                                _model = _model.copyWith(email: value),
                          ),
                          textFormWidget2: DefaultTextFormWidget(
                            hintText: 'Mínimo de 6 caracteres',
                            textInputType: TextInputType.number,
                            title: 'Senha',
                            onSaved: (value) =>
                                _model = _model.copyWith(password: value),
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
