import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/bottom_navigation_bar.dart';
import 'package:widgets/app/core/ui/widgets/drawer_menu.dart';

class ReadingsPage extends StatelessWidget {
  const ReadingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leitura'),
        actions: <Widget>[
          Ink(
            width: 35,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.purpleBlue,
                width: 1.5,
              ),
              shape: BoxShape.circle,
            ),
            child: InkWell(
              child: IconButton(
                splashRadius: 15,
                padding: EdgeInsets.zero,
                iconSize: 25,
                onPressed: () {},
                icon: const Icon(Icons.house_outlined),
                color: AppColors.purpleBlue,
              ),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      drawer: const DrawerMenu(),
      body: Container(
        color: AppColors.backgroundColor,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              child: Card(
                elevation: 0,
                color: AppColors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/logo.png'),
                              const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image.asset('assets/images/robot.png'),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(AppColors.green),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('Comprar'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Voce já adquiriu os sensores?',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Então vamos começar a configuração e instalação',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.grey,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 45,
              width: MediaQuery.of(context).size.width * 0.8,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(
                  'Configurar Sensores',
                  style: TextStyle(color: AppColors.purpleBlue),
                ),
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Tela de leitura com sensor',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.grey,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          ],
        ),
      ),
      bottomSheet: const BottomNavigationWidget(),
    );
  }
}
