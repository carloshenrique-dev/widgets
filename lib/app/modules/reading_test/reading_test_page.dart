import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/retangular_button_widget.dart';
import 'package:widgets/app/modules/reading_test/widgets/chart_bar.dart';

class ReadingTestPage extends StatelessWidget {
  const ReadingTestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> mockValues = ['25', '28', '500', '25', '0'];
    final List<int> valuesMockNumbers = mockValues.map(int.parse).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Teste de Leitura'),
      ),
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Teste realizado com sucesso',
              style: TextStyle(
                fontSize: 22,
                color: AppColors.green,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              height: 380,
              decoration: BoxDecoration(
                color: AppColors.white,
                border: Border.all(color: AppColors.grey),
                borderRadius: BorderRadius.circular(6),
              ),
              // width: 320,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Sensor 1',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.navyBlue,
                        ),
                      ),
                      IconButton(
                        padding: const EdgeInsets.only(left: 20),
                        icon: const Icon(Icons.delete_outline),
                        color: Colors.red,
                        iconSize: 26,
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          FontAwesomeIcons.temperatureArrowDown,
                          color: AppColors.purpleBlue,
                        ),
                        Icon(
                          FontAwesomeIcons.temperatureArrowUp,
                          color: AppColors.purpleBlue,
                        ),
                        Icon(
                          Icons.wb_sunny_outlined,
                          color: AppColors.purpleBlue,
                        ),
                        Icon(
                          Icons.water_drop_outlined,
                          color: AppColors.purpleBlue,
                        ),
                        Icon(
                          FontAwesomeIcons.dropletSlash,
                          color: AppColors.purpleBlue,
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: ChartBar(
                      soilTemperature: valuesMockNumbers[0],
                      ambientTemperature: valuesMockNumbers[1],
                      insolation: valuesMockNumbers[2],
                      soilMoisture: valuesMockNumbers[3],
                      ambientMoisture: valuesMockNumbers[4],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              height: 55,
              width: double.infinity,
              child: RetangularButtonWidget(
                title: 'Testar leitura novamente',
                color: AppColors.white,
                onPrimary: AppColors.purpleBlue,
                onPressed: () {
                  //RELOAD THE PAGE WITH THE DATAS
                  Modular.to.navigate('/readingTest');
                },
              ),
            ),
            SizedBox(
              height: 55,
              width: double.infinity,
              child: RetangularButtonWidget(
                title: 'Concluir',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
