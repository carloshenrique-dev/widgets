import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/text_form_widgets/default_text_form_field_widget.dart';
import 'package:widgets/app/core/ui/widgets/text_form_widgets/password_form_field.dart';
import 'package:widgets/app/core/ui/widgets/button_widgets/retangular_button_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text(
          "Login",
          style: TextStyle(color: AppColors.purpleBlue),
        ),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.purpleBlue,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: media.width,
                height: 45,
              ),
              const SizedBox(
                height: 10,
              ),
              const DefaultTextFormWidget(),
              const SizedBox(height: 25),
              const PasswordFormField(),
              SizedBox(
                height: 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () => Modular.to.navigate('/recover/'),
                      child: const Text(
                        'Esqueci minha Senha',
                        style: TextStyle(
                          fontSize: 17,
                          color: AppColors.purpleBlue,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: media.width,
                height: 45,
                child: const RetangularButtonWidget(
                  color: AppColors.purpleBlue,
                ),
              ),
              const SizedBox(height: 180),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'N??o ?? Registrado?',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () => Modular.to.navigate('/register/'),
                    child: const Text(
                      'Registre-se',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.purpleBlue,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
