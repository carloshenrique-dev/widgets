import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';

class BoletoGeneratedPage extends StatelessWidget {
  const BoletoGeneratedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagamento'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 40),
          const Text(
            'Boleto Gerado com Sucesso!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: AppColors.green,
            ),
          ),
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            child: const Text(
              'Após confirmação de pagamento, vamos prosseguir com o cadastro de endereço para envio dos sensores.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.gray,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 20),
                    const Image(
                      image: AssetImage('assets/images/barcode.png'),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: const Text(
                        'Copiar código de barras',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: AppColors.purpleBlue,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    const Icon(
                      Icons.print_outlined,
                      size: 80,
                      color: AppColors.purpleBlue,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: const Text(
                        'Imprimir boleto',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: AppColors.purpleBlue,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Vencimento:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
              ),
              Text(
                '26/05',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.gray,
                ),
              ),
            ],
          ),
          const Expanded(
            child: SizedBox(),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            height: 40,
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColors.purpleBlue),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text('Finalizar'),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
