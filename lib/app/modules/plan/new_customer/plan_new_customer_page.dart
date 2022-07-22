import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/sensor_counter.dart';
import 'package:widgets/app/core/ui/widgets/subtotal_widget.dart';

enum RadioButtonOptions { one, two }

class PlanNewCustomerPage extends StatefulWidget {
  const PlanNewCustomerPage({Key? key}) : super(key: key);

  @override
  State<PlanNewCustomerPage> createState() => _PlanNewCustomerPageState();
}

class _PlanNewCustomerPageState extends State<PlanNewCustomerPage> {
  @override
  Widget build(BuildContext context) {
    RadioButtonOptions? selectedRadioButtonOption = RadioButtonOptions.one;
    final TextEditingController numberOfSensors = TextEditingController();
    const double subtotal = 0.0;
    const double total = 0.0;

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
                        fontWeight: FontWeight.w500,
                      ),
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
                            'Assinatura de serviço de conectividade \n e armazenamento de dados*',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.purpleBlue,
                            ),
                          ),
                          StatefulBuilder(
                            builder: (context, setState) => Column(
                              children: [
                                RadioListTile(
                                  activeColor: AppColors.purpleBlue,
                                  title: Text(
                                    '12 Meses',
                                    style: TextStyle(
                                      color: selectedRadioButtonOption ==
                                              RadioButtonOptions.one
                                          ? AppColors.black
                                          : AppColors.grey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  value: RadioButtonOptions.one,
                                  groupValue: selectedRadioButtonOption,
                                  onChanged: (RadioButtonOptions? selected) {
                                    setState(() {
                                      selectedRadioButtonOption = selected;
                                    });
                                  },
                                ),
                                RadioListTile(
                                  activeColor: AppColors.purpleBlue,
                                  title: Row(
                                    children: [
                                      Text(
                                        '24 Meses',
                                        style: TextStyle(
                                          color: selectedRadioButtonOption ==
                                                  RadioButtonOptions.two
                                              ? AppColors.black
                                              : AppColors.grey,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      const SizedBox(width: 40),
                                      Container(
                                        padding: const EdgeInsets.all(5),
                                        color: AppColors.green,
                                        child: const Text(
                                          '50% OFF',
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  value: RadioButtonOptions.two,
                                  groupValue: selectedRadioButtonOption,
                                  onChanged: (RadioButtonOptions? selected) {
                                    setState(() {
                                      selectedRadioButtonOption = selected;
                                    });
                                  },
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    const SubtotalWidget(
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
