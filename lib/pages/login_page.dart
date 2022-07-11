import 'package:flutter/material.dart';
import 'package:widgets/theme/app_colors.dart';
import 'package:widgets/utils/app_routes.dart';
import 'package:widgets/widgets/bottom_navigation_bar.dart';
import '../widgets/default_text_form_field_widget.dart';
import '../widgets/retangular_button_widget.dart';

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
      bottomNavigationBar: const BottomNavigationWidget(

      ),
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
              const SizedBox(height: 10,),
              const DefaultTextFormWidget(),
              const SizedBox( height: 25),
              const DefaultTextFormWidget(title: 'Senha'),
              SizedBox(
                height: 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, AppRoutes.RECOVER_PASSWORD_PAGE),
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
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRoutes.RECOVER_PASSWORD_PAGE);
                    },
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
