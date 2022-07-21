import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/sensor_counter.dart';
import 'package:widgets/app/core/ui/widgets/subtotal_widget.dart';

enum RadioButtonOptions { one, two }

class PlanOldCustomerPage extends StatefulWidget {
  const PlanOldCustomerPage({Key? key}) : super(key: key);

  @override
  State<PlanOldCustomerPage> createState() => _PlanOldCustomerPageState();
}

class _PlanOldCustomerPageState extends State<PlanOldCustomerPage> {
  @override
  Widget build(BuildContext context) {
    RadioButtonOptions? selectedRadioButtonOption = RadioButtonOptions.one;
    TextEditingController numberOfSensors = TextEditingController();
    double subtotal = 0.0;
    double total = 0.0;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Plano'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const Text(
                      'Parabéns! Sua Fazenda tem cobertura digital!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.green,
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 20),
                    SensorCounter(
                      controller: numberOfSensors,
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          const Text(
                            'Adicionar plano de conectividade ao \n seu plano atual:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.purpleBlue),
                          ),
                          StatefulBuilder(
                            builder: ((context, setState) => Column(
                                  children: [
                                    RadioListTile(
                                      contentPadding: const EdgeInsets.all(0),
                                      activeColor: AppColors.purpleBlue,
                                      title: Row(
                                        children: [
                                          Text(
                                            '4 Meses até a renovação',
                                            style: TextStyle(
                                              color:
                                                  selectedRadioButtonOption ==
                                                          RadioButtonOptions.one
                                                      ? AppColors.black
                                                      : AppColors.gray,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          const SizedBox(width: 15),
                                          const Text(
                                            'R\$800,00',
                                            style: TextStyle(
                                              color: AppColors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      value: RadioButtonOptions.one,
                                      groupValue: selectedRadioButtonOption,
                                      onChanged:
                                          (RadioButtonOptions? selected) {
                                        setState(() {
                                          selectedRadioButtonOption = selected;
                                        });
                                      },
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          '*Na renovação do seu plano será, \n adicionado o valor de R\$50,00 por sensor.',
                                          textAlign: TextAlign.left,
                                          style:
                                              TextStyle(color: AppColors.gray),
                                        ),
                                      ],
                                    )
                                  ],
                                )),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    SubtotalWidget(
                      isNew: false,
                      subtotal: subtotal,
                      total: total,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
