import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:widgets/app/core/ui/widgets/bottom_sheet_header.dart';
import '../themes/app_colors.dart';

class SensorEditBottomSheet extends StatefulWidget {
  final String? sensorName;

  const SensorEditBottomSheet({
    Key? key,
    required this.sensorName,
  }) : super(key: key);

  @override
  State<SensorEditBottomSheet> createState() => _SensorEditBottomSheetState();
}

class _SensorEditBottomSheetState extends State<SensorEditBottomSheet> {
  @override
  Widget build(BuildContext context) {
    final List<String> dropdownList = ['01', '02', '03'];
    String? dropdownValue = '01';
    final List<String> talhao = ['Talhão', 'df'];
    String? talhaoValue = 'Talhão';
    final List<String> farm = ['Fazenda', 'Foz'];
    String? farmValue = 'Fazenda';
    final Size size = MediaQuery.of(context).size;

    return TextButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
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
                      Row(
                        children: [
                          const Icon(
                            FontAwesomeIcons.locationDot,
                            color: AppColors.green,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            widget.sensorName ?? '',
                            style: const TextStyle(
                              color: AppColors.green,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
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
                            width: 60,
                            child: DropdownButtonFormField<String>(
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
      child: Text(
        widget.sensorName ?? '',
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 18,
        ),
      ),
    );
  }
}
