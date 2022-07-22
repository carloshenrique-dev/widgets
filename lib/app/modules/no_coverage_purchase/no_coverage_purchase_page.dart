import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/widgets/drawer_menu.dart';
import 'package:widgets/app/core/ui/widgets/top_image.dart';

import 'package:widgets/app/core/ui/themes/app_colors.dart';

class NoCoveragePage extends StatelessWidget {
  const NoCoveragePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        drawer: const DrawerMenu(),
        body: Column(
          children: [
            const Center(
              child: TopImage(url: 'assets/images/unfortunately.png'),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
              child: Text(
                'Ops! Sua fazenda não tem cobertura no momento.',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Text(
                '''
Vamos monitorar sua situação e esperamos que em um futuro próximo possamos prosseguir em digitalizar sua fazenda

Enquanto isso, utilize nosso app para gerir sua fazenda. Obrigado!
                  ''',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      AppColors.purpleBlue,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Voltar ao menu principal'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
