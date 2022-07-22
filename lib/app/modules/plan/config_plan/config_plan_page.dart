import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';

class ConfigPlanPage extends StatelessWidget {
  const ConfigPlanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Plano'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 40,
              bottom: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Plano Contratado',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.75,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                        color: AppColors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              color: AppColors.purpleBlue,
                            ),
                            padding: const EdgeInsets.all(20),
                            width: double.infinity,
                            child: const Text(
                              'Plano de conectividade',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '\u2022 10 sensores incluídos',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.black,
                                  ),
                                ),
                                const SizedBox(height: 25),
                                const Text(
                                  '\u2022 Pacote de serviço de conectividade e armazenamento de dados para número de sensores contratado',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.gray,
                                  ),
                                ),
                                const SizedBox(height: 25),
                                const Text(
                                  '\u2022 Número de usuários ilimitado',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.gray,
                                  ),
                                ),
                                const SizedBox(height: 25),
                                const Text(
                                  '\u2022 Conexão com serviços de terceiros ilimitado',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.gray,
                                  ),
                                ),
                                const SizedBox(height: 25),
                                const Text(
                                  'Plano 12 meses',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.black,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Renova em 05 de janeiro de 2022',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.gray,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'R\$ 590,00',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.black,
                                  ),
                                ),
                                const SizedBox(height: 40),
                                Row(
                                  children: [
                                    CupertinoSwitch(
                                      activeColor: AppColors.purpleBlue,
                                      value: true,
                                      onChanged: (value) {},
                                    ),
                                    const Text(
                                      'Renovar automaticamente',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Cancelar plano',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.gray,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
