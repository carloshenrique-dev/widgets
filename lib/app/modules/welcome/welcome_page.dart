import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/themes/app_text_style.dart';
import 'package:widgets/app/core/ui/widgets/retangular_button_widget.dart';
import 'package:widgets/app/modules/otp/widgets/rich_text_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            width: size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/images/initial_page_background.png',
                ),
              ),
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  top: size.height * .47,
                  right: 1,
                  left: 1,
                  child: SizedBox(
                    width: size.width,
                    height: 45,
                    child: const RetangularButtonWidget(
                      title: 'Registre-se',
                    ),
                  ),
                ),
                Positioned(
                  bottom: size.height * .35,
                  right: 1,
                  left: 1,
                  child: const Text(
                    'Possui código de acesso?',
                    style: AppTextStyle.textLink,
                    textAlign: TextAlign.center,
                  ),
                ),
                Positioned(
                  bottom: size.height * .27,
                  right: 1,
                  left: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 10),
                      hintText: 'Digite aqui o código da sua fazenda',
                      hintStyle: const TextStyle(
                        fontSize: 15,
                      ),
                      suffixIcon: Container(
                        decoration: const BoxDecoration(
                          color: AppColors.purpleBlue,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward_rounded,
                            color: AppColors.white,
                            size: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: size.height * .2,
                  right: 1,
                  left: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichTextWidget(
                        title: 'Ja é Registrado? ',
                        link: 'Entre',
                        voidCallback: () => Modular.to.navigate('/login/'),
                        titleStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                        linkStyle: const TextStyle(
                          color: AppColors.purpleBlue,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
