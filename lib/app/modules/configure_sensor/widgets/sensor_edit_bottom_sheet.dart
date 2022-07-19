import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:widgets/app/core/ui/widgets/bottom_sheet_header.dart';
import '../../../core/ui/themes/app_colors.dart';

class SensorEditBottomSheet extends StatefulWidget {
  final String? sensorName;
  String? fieldValue;
  String? farmValue;
  String? sensorNumber;
  final List<String> sensorNumberList;
  final List<String> fieldList;
  final List<String> farmList;

  SensorEditBottomSheet({
    Key? key,
    required this.sensorName,
    required this.sensorNumber,
    required this.sensorNumberList,
    required this.fieldValue,
    required this.fieldList,
    required this.farmValue,
    required this.farmList,
  }) : super(key: key);

  @override
  State<SensorEditBottomSheet> createState() => _SensorEditBottomSheetState();
}

class _SensorEditBottomSheetState extends State<SensorEditBottomSheet> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return TextButton(
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
                  padding: const EdgeInsets.symmetric(horizontal: 10),
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
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            width: 90,
                            height: 55,
                            child: DropdownButtonFormField<String>(
                              isExpanded: true,
                              icon: const Icon(
                                Icons.expand_more,
                                color: AppColors.purpleBlue,
                              ),
                              value: widget.sensorNumber,
                              items: widget.sensorNumberList
                                  .map((dropdownStringItem) {
                                return DropdownMenuItem<String>(
                                  value: dropdownStringItem,
                                  child: Text(dropdownStringItem),
                                );
                              }).toList(),
                              onChanged: (newItemSelected) {
                                setState(() {
                                  widget.sensorNumber = newItemSelected;
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
                      vertical: 12,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
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
                                  value: widget.farmValue,
                                  items: widget.farmList
                                      .map(
                                        (item) => DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(item),
                                        ),
                                      )
                                      .toList(),
                                  onChanged: (item) =>
                                      setState(() => widget.farmValue = item),
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
                                value: widget.fieldValue,
                                items: widget.fieldList
                                    .map(
                                      (item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(item),
                                      ),
                                    )
                                    .toList(),
                                onChanged: (item) =>
                                    setState(() => widget.fieldValue = item),
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
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
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
