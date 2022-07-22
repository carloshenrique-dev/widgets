import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/retangular_button_widget.dart';

class LocateSensorPage extends StatelessWidget {
  const LocateSensorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Localizar Sensor'),
      ),
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Seu sensor foi localizado!',
              style: TextStyle(
                fontSize: 26,
                color: AppColors.green,
              ),
            ),
            Container(
              color: AppColors.backgroundColor,
              height: 400,
              width: 320,
              //WILL RECEIVE MAP API
            ),
            SizedBox(
              height: 55,
              width: double.infinity,
              child: RetangularButtonWidget(
                title: 'Ler QR Code novamente',
                color: AppColors.white,
                onPrimary: AppColors.purpleBlue,
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 55,
              width: double.infinity,
              child: RetangularButtonWidget(
                title: 'Confirmar',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
