import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/default_text_form_field_widget.dart';
import 'package:widgets/app/core/ui/widgets/password_form_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameFieldController = TextEditingController();
  final TextEditingController _emailFieldController = TextEditingController();
  final TextEditingController _phoneFieldController = TextEditingController();
  final TextEditingController _passwordFieldController =
      TextEditingController();
  final TextEditingController _confirmPasswordFieldController =
      TextEditingController();
  bool _passwordVisible = false;
  bool _confirmPasswordVisible = false;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
    _confirmPasswordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Registre-se'),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: AppColors.white,
            padding: const EdgeInsets.all(25),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 20),
                  DefaultTextFormWidget(
                    title: 'Nome',
                    hintText: 'Digite aqui',
                    validator: Validatorless.required('Nome é obrigatório'),
                    controller: _nameFieldController,
                  ),
                  const SizedBox(height: 20),
                  DefaultTextFormWidget(
                    title: 'E-mail',
                    hintText: 'Digite aqui',
                    validator: Validatorless.required('E-mail é obrigatório'),
                    controller: _emailFieldController,
                  ),
                  const SizedBox(height: 20),
                  DefaultTextFormWidget(
                    title: 'Telefone',
                    hintText: '(DDD) Número',
                    validator: Validatorless.required('Telefone é obrigatório'),
                    controller: _phoneFieldController,
                  ),
                  const SizedBox(height: 20),
                  PasswordFormField(
                    title: 'Senha',
                    hintText: 'Digite aqui',
                    validator: Validatorless.required('Senha é obrigatória'),
                    controller: _passwordFieldController,
                    obscureText: _passwordVisible,
                    onPressed: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  PasswordFormField(
                    title: 'Confirmar Senha',
                    hintText: 'Digite aqui',
                    validator: Validatorless.required('Senha é obrigatória'),
                    controller: _confirmPasswordFieldController,
                    obscureText: _confirmPasswordVisible,
                    onPressed: () {
                      setState(() {
                        _confirmPasswordVisible = !_confirmPasswordVisible;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 184, 183, 183),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('Próximo'),
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
