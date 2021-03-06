import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/themes/app_text_style.dart';
import 'package:widgets/app/core/ui/widgets/personalized_container_widget/personalized_container_widget.dart';

class PixPage extends StatelessWidget {
  const PixPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: PersonalizedContainerWidget(
        widget: Column(
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
              'Ap??s a confirma????o do pagamento, prosseguiremos com o cadastro do endere??o para envio dos sensores.',
              style: AppTextStyle.commonText,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
