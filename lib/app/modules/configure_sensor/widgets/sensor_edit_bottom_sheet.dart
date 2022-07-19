import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:widgets/app/core/ui/widgets/bottom_sheet_header.dart';
import 'package:widgets/app/core/ui/widgets/retangular_button_widget.dart';
import '../../../core/ui/themes/app_colors.dart';

class SensorEditBottomSheet extends StatefulWidget {
  final String? sensorName;
  final List<String> sensorNumberList;
  final List<String> fieldList;
  final List<String> farmList;

  const SensorEditBottomSheet({
    Key? key,
    required this.sensorName,
    required this.sensorNumberList,
    required this.fieldList,
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
                horizontal: 20,
                vertical: 15,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BottomSheetHeader(title: 'Editar Sensor'),
                  Row(
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
                              fontSize: 22,
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
                          SizedBox(
                            width: 70,
                            height: 55,
                            child: DropdownButtonFormField<String>(
                              isExpanded: true,
                              icon: const Icon(
                                Icons.expand_more,
                                color: AppColors.purpleBlue,
                              ),
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
                        height: 65,
                        width: size.width / 1.6,
                        child: DropdownButtonFormField<String>(
                          icon: const Icon(
                            Icons.expand_more,
                            color: AppColors.navyBlue,
                          ),
                          isExpanded: true,
                          value: 'Foz',
                          items: widget.farmList
                              .map(
                                (item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item),
                                ),
                              )
                              .toList(),
                          onChanged: (item) {
                            // setState(() => widget.farmValue = item);
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
                        height: 65,
                        width: size.width / 1.6,
                        child: DropdownButtonFormField<String>(
                          icon: const Icon(
                            Icons.expand_more,
                            color: AppColors.navyBlue,
                          ),
                          value: 'df',
                          items: widget.fieldList
                              .map(
                                (item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item),
                                ),
                              )
                              .toList(),
                          onChanged: (item) {
                            // setState(() => widget.fieldValue = item);
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
                            onPressed: () {},
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
                  const SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: RetangularButtonWidget(
                      title: 'Salvar',
                    ),
                  ),
                ],
              ),
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
