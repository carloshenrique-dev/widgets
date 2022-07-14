import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';
import 'package:widgets/app/core/ui/themes/app_text_style.dart';
import 'package:widgets/app/core/ui/widgets/retangular_button_widget.dart';
import 'widgets/rich_text_widget.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final List<TextEditingController> _textEditingController =
      <TextEditingController>[];
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _textEditingController.map((controller) => controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Confirmação'),
        ),
        body: SingleChildScrollView(
          child: Padding(
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
                  key: _formKey,
                  child: SizedBox(
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: generateTextFormField(size),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                RichTextWidget(
                  title: 'Não recebeu o código de segurança?\n',
                  link: 'Reenviar SMS',
                  voidCallback: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                RichTextWidget(
                  title: 'Não reconhece o número de telefone?\n',
                  link: 'Editar número de telefone',
                  voidCallback: () {},
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: size.width,
                  height: 50,
                  child: RetangularButtonWidget(
                    title: 'Confirmar',
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
    );
  }

  List<Widget> generateTextFormField(Size size) {
    return List<SizedBox>.generate(
      6,
      (index) {
        _textEditingController.add(TextEditingController());
        return SizedBox(
          width: size.width * .14,
          child: TextFormField(
            textAlign: TextAlign.center,
            controller: _textEditingController[index],
            validator: Validatorless.multiple([
              Validatorless.required(''),
              Validatorless.number(''),
            ]),
            keyboardType: TextInputType.number,
          ),
        );
      },
    );
  }
}
