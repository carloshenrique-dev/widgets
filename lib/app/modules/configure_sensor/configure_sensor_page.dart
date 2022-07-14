import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';

import '../../core/ui/widgets/field_tile_popup_button.dart';
import '../../core/ui/widgets/filter_bottom_sheet.dart';
import '../../core/ui/widgets/sensor_edit_bottom_sheet.dart';

class ConfigureSensorPage extends StatefulWidget {
  final TextEditingController? controller;

  const ConfigureSensorPage({Key? key, this.controller}) : super(key: key);

  @override
  State<ConfigureSensorPage> createState() => _ConfigureSensorPageState();
}

class _ConfigureSensorPageState extends State<ConfigureSensorPage> {
  List sensorsList = [
    {'DJ236546584': 'Em Trânsito'},
    {'DJ222222222': 'Recebido'},
    {'DJ111111111': 'Registrado'}
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Color getTextColor(String? value) {
      if (value == 'Em Trânsito') {
        return Colors.orange;
      } else if (value == 'Recebido') {
        return AppColors.green;
      } else {
        return AppColors.purpleBlue;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Configurar Sensores"),
      ),
      body: Container(
        decoration: const BoxDecoration(color: AppColors.iceWhite),
        child: Column(
          children: [
            Container(
              color: AppColors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            size: 30,
                          ),
                        ),
                        controller: widget.controller,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            color: AppColors.purpleBlue,
                            size: 30,
                          ),
                        ),
                        const FilterBottomSheet(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Sensores',
                                  style: TextStyle(
                                      fontSize: 18, color: AppColors.navyBlue),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Status',
                                  style: TextStyle(
                                      fontSize: 18, color: AppColors.navyBlue),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Divider(
                          height: 40,
                          thickness: 1.2,
                          color: AppColors.navyBlue,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: ListView.builder(
                              itemCount: 3,
                              itemBuilder: (ctx, index) {
                                String? status = sensorsList[index]
                                    .values
                                    .toString()
                                    .replaceAll(RegExp('[()]'), '');
                                String? sensor = sensorsList[index]
                                    .keys
                                    .toString()
                                    .replaceAll(RegExp('[()]'), '');

                                return Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SensorEditBottomSheet(
                                      sensorName: sensor,
                                    ),
                                    Text(
                                      status,
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: getTextColor(status),
                                      ),
                                    ),
                                    const FieldTilePopupButton()
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
