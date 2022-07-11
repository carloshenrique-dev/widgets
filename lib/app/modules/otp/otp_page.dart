import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_text_style.dart';
import 'package:widgets/app/core/ui/widgets/retangular_button_widget.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Confirmação'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Enviamos um SMS para ',
                  style: AppTextStyle.commonText,
                  children: [
                    TextSpan(
                      text: '(11) 98557-6404 ',
                      style: AppTextStyle.boldCommonText,
                      children: const [
                        TextSpan(
                            style: AppTextStyle.commonText,
                            text:
                                'com seu código. Por favor, insira o código abaixo para confirmar seu número de telefone.'),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Código',
                  style: AppTextStyle.boldCommonText,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Form(
                child: SizedBox(
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: size.width * .14,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: size.width * .14,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: size.width * .14,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: size.width * .14,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: size.width * .14,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: size.width * .14,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Não recebeu o código de segurança?\n',
                  style: AppTextStyle.commonText,
                  children: [
                    TextSpan(
                      text: 'Reenviar SMS',
                      style: AppTextStyle.textLink,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('object');
                        },
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Não reconhece o número de telefone?\n',
                  style: AppTextStyle.commonText,
                  children: [
                    TextSpan(
                      text: 'Editar número de telefone',
                      style: AppTextStyle.textLink,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('object');
                        },
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: size.width,
                height: 50,
                child: const RetangularButtonWidget(
                  title: 'Confirmar',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
