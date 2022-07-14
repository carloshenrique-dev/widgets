import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/themes/app_text_style.dart';

class PixPage extends StatelessWidget {
  const PixPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.iceWhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: height * .5,
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                const Text(
                  'Copie a chave abaixo e realize o pagamento pelo app do seu banco',
                  style: TextStyle(
                    color: AppColors.purpleBlue,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.pix,
                      color: AppColors.waterGreen,
                      size: 45,
                    ),
                    Text(
                      'Chave Pix',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                TextField(
                  decoration: InputDecoration(
                    enabled: false,
                    labelText: '123456789774574584254425455',
                    labelStyle: const TextStyle(
                      color: AppColors.waterGreen,
                      fontSize: 20,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.copy,
                        color: AppColors.purpleBlue,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Após a confirmação do pagamento, prosseguiremos com o cadastro do endereço para envio dos sensores.',
                  style: AppTextStyle.commonText,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
