import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import 'bottom_sheet_header.dart';

class RegisterSensorBottomSheet extends StatefulWidget {
  const RegisterSensorBottomSheet({Key? key}) : super(key: key);

  @override
  State<RegisterSensorBottomSheet> createState() =>
      _RegisterSensorBottomSheetState();
}

class _RegisterSensorBottomSheetState extends State<RegisterSensorBottomSheet> {
  TextEditingController? controller;
  List<String> dropdownList = ['01', '02', '03'];
  String? dropdownValue = '01';

  List<String> talhao = ['Talhão', 'df'];
  String? talhaoValue = 'Talhão';
  List<String> farm = ['Fazenda', 'Foz'];
  String? farmValue = 'Fazenda';

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
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(15),
            ),
          ),
          builder: (context) => Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const BottomSheetHeader(title: 'Editar Sensor'),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(),
                      Row(
                        children: [
                          const Text(
                            'nº',
                            style: TextStyle(
                              color: AppColors.purpleBlue,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(width: 10),
                          SizedBox(
                            width: 50,
                            child: DropdownButton<String>(
                              isExpanded: true,
                              icon: const Icon(
                                Icons.expand_more,
                                color: AppColors.purpleBlue,
                              ),
                              value: dropdownValue,
                              items: dropdownList.map((dropdownStringItem) {
                                return DropdownMenuItem<String>(
                                  value: dropdownStringItem,
                                  child: Text(dropdownStringItem),
                                );
                              }).toList(),
                              onChanged: (newItemSelected) {
                                setState(() {
                                  dropdownValue = newItemSelected;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 7),
                          child: Row(
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
                                width: size.width / 1.8,
                                child: DropdownButtonFormField<String>(
                                  icon: const Icon(
                                    Icons.expand_more,
                                    color: AppColors.navyBlue,
                                  ),
                                  isExpanded: true,
                                  value: farmValue,
                                  items: farm
                                      .map(
                                        (item) => DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(item),
                                        ),
                                      )
                                      .toList(),
                                  onChanged: (item) =>
                                      setState(() => farmValue = item),
                                ),
                              ),
                            ],
                          ),
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
                              width: size.width / 1.8,
                              child: DropdownButtonFormField<String>(
                                icon: const Icon(
                                  Icons.expand_more,
                                  color: AppColors.navyBlue,
                                ),
                                value: talhaoValue,
                                items: talhao
                                    .map(
                                      (item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(item),
                                      ),
                                    )
                                    .toList(),
                                onChanged: (item) =>
                                    setState(() => talhaoValue = item),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.qr_code_scanner,
                              color: AppColors.purpleBlue,
                              size: 55,
                            ),
                            onPressed: () {},
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'Ler QRCode',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.speed,
                              color: AppColors.purpleBlue,
                              size: 55,
                            ),
                            onPressed: () {},
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'Teste de Leitura',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                      primary: AppColors.purpleBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Salvar',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
