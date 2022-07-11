import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/bottom_navigation_bar.dart';
import 'package:widgets/app/core/ui/widgets/default_text_form_field_widget.dart';
import 'package:widgets/app/core/ui/widgets/retangular_button_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login",
          style: TextStyle(color: AppColors.blue),
        ),
        centerTitle: true,
        backgroundColor: Colors.white24,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
              const DefaultTextFormWidget(title: 'Senha'),
              SizedBox(
                height: 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () => Modular.to.navigate('/'),
                      child: const Text(
                        'Esqueci minha Senha',
                        style: TextStyle(fontSize: 17, color: AppColors.blue),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: media.width,
                height: 45,
                child: const RetangularButtonWidget(
                  color: AppColors.blue,
                ),
              ),
              const SizedBox(height: 180),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Não é Registrado?',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () => Modular.to.navigate(''),
                    child: const Text(
                      'Registre-se',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.blue,
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
