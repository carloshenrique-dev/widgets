import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/widgets/top_image.dart';

import 'package:widgets/app/core/ui/themes/app_colors.dart';

class ClientlessPurchasePage extends StatelessWidget {
  const ClientlessPurchasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Plano'),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: TopImage(url: 'assets/images/farm.png'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Vamos Iniciar!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: AppColors.purpleBlue,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  'Antes de mais nada, precisamos saber se sua fazenda tem cobertura digital, para isso, por favor insira sua localização',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            AppColors.purpleBlue),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('Marcar local pelo Google Maps')),
                ),
              )
            ],
          )),
    );
  }
}
