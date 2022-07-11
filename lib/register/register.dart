import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';
import 'package:widgets/theme/app_colors.dart';
import 'package:widgets/widgets/default_text_form_field_widget.dart';
import 'package:widgets/widgets/password_form_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  nameFieldController = TextEditingController();
  emailFieldController = TextEditingController();
  phoneFieldController = TextEditingController();
  passwordFieldController = TextEditingController();
  confirmPasswordFieldController = TextEditingController();
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
          centerTitle: true,
          title: const Text(
            'Registre-se',
            style:
                TextStyle(color: AppColors.blue, fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          backgroundColor: AppColors.white,
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
                    //controller:
                  ),
                  const SizedBox(height: 20),
                  DefaultTextFormWidget(
                    title: 'E-mail',
                    hintText: 'Digite aqui',
                    validator: Validatorless.required('E-mail é obrigatório'),
                    //controller:
                  ),
                  const SizedBox(height: 20),
                  DefaultTextFormWidget(
                    title: 'Telefone',
                    hintText: '(DDD) Número',
                    validator: Validatorless.required('Telefone é obrigatório'),
                    //controller:
                  ),
                  const SizedBox(height: 20),
                  PasswordFormField(
                    title: 'Senha',
                    hintText: 'Digite aqui',
                    validator: Validatorless.required('Senha é obrigatória'),
                    //controller:
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
                    //controller:
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
                            const Color.fromARGB(255, 184, 183, 183)),
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
