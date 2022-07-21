import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/core/ui/widgets/bottom_sheet_header.dart';
import 'package:widgets/app/core/ui/widgets/retangular_button_widget.dart';

import '../../../core/ui/themes/app_colors.dart';

class RegisterSensorBottomSheet extends StatefulWidget {
  final String? sensorName;
  final List<String> sensorNumberList;
  final List<String> fieldList;
  final List<String> farmList;

  const RegisterSensorBottomSheet({
    super.key,
    this.sensorName = '',
    required this.sensorNumberList,
    required this.fieldList,
    required this.farmList,
  });

  @override
  State<RegisterSensorBottomSheet> createState() =>
      _RegisterSensorBottomSheetState();
}

class _RegisterSensorBottomSheetState extends State<RegisterSensorBottomSheet> {
  TextEditingController? _controller;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return IconButton(
      icon: const Icon(
        Icons.add,
        color: AppColors.purpleBlue,
        size: 30,
      ),
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(15),
            ),
          ),
          builder: (context) => Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            height: size.height * .75,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 15,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BottomSheetHeader(title: 'Registrar Sensor'),
                  RichText(
                    text: TextSpan(
                      text: 'Clique aqui',
                      style: const TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                        color: AppColors.purpleBlue,
                      ),
                      onEnter: (value) {},
                      children: const [
                        TextSpan(
                          text: ' para saber como instalar os sensores.',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 16,
                            color: AppColors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: 100,
                          child: TextFormField(
                            initialValue: widget.sensorName,
                            controller: _controller,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: const InputDecoration(
                              hintText: 'Digite nome do sensor.',
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Sensor nº',
                            style: TextStyle(
                              color: AppColors.purpleBlue,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            width: 66,
                            height: 55,
                            child: DropdownButtonFormField<String>(
                              icon: const Icon(
                                Icons.expand_more,
                                color: AppColors.purpleBlue,
                              ),
                              isExpanded: true,
                              value: '01',
                              items: widget.sensorNumberList
                                  .map((dropdownStringItem) {
                                return DropdownMenuItem<String>(
                                  value: dropdownStringItem,
                                  child: Text(dropdownStringItem),
                                );
                              }).toList(),
                              onChanged: (newItemSelected) {
                                setState(() {
                                  // widget.sensorNumber = newItemSelected;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Fazenda',
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.purpleBlue,
                        ),
                      ),
                      SizedBox(
                        height: 55,
                        width: size.width / 1.6,
                        child: DropdownButtonFormField<String>(
                          icon: const Icon(
                            Icons.expand_more,
                            color: AppColors.navyBlue,
                          ),
                          isExpanded: true,
                          value: 'Fazenda',
                          items: widget.farmList
                              .map(
                                (item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item),
                                ),
                              )
                              .toList(),
                          onChanged: (item) {
                            // setState(() => widget.farmValue = item ?? '');
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Talhão',
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.purpleBlue,
                        ),
                      ),
                      SizedBox(
                        height: 55,
                        width: size.width / 1.6,
                        child: DropdownButtonFormField<String>(
                          icon: const Icon(
                            Icons.expand_more,
                            color: AppColors.navyBlue,
                          ),
                          value: 'Talhão',
                          items: widget.fieldList
                              .map(
                                (item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item),
                                ),
                              )
                              .toList(),
                          onChanged: (item) {
                            // setState(() => widget.fieldValue = item ?? '');
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            padding: EdgeInsets.zero,
                            icon: const Icon(
                              Icons.qr_code_scanner,
                              color: AppColors.purpleBlue,
                              size: 50,
                            ),
                            onPressed: () {
                              Modular.to.navigate('/locateSensor/');
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Ler QRCode',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            padding: EdgeInsets.zero,
                            icon: const Icon(
                              Icons.speed,
                              color: AppColors.purpleBlue,
                              size: 50,
                            ),
                            onPressed: () {},
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Teste de Leitura',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: RetangularButtonWidget(
                      title: 'Salvar',
                      onPressed: () {
                        Navigator.of(context).pop();
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Stack(
                              children: [
                                Center(
                                  child: Container(
                                    padding: const EdgeInsets.all(20),
                                    height: 250,
                                    width: 300,
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Icon(
                                          Icons.error_outline,
                                          color: Colors.red,
                                          size: 30,
                                        ),
                                        const Text(
                                          'Falha na leitura. Verifique a instalação e tente novamente',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.navyBlue,
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 50,
                                          width: 180,
                                          child: RetangularButtonWidget(
                                            title: 'Voltar',
                                            color: AppColors.white,
                                            onPrimary: AppColors.purpleBlue,
                                            borderColor: AppColors.purpleBlue,
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
