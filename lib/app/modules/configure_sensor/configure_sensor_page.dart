import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/header.dart';
import 'package:widgets/app/core/ui/widgets/register_sensor_bottom_sheet.dart';

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
    {'DJ333333333': 'Registrado'},
    {'DJ444444444': 'Em Trânsito'},
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
        // height: size.height,
        decoration: const BoxDecoration(color: AppColors.iceWhite),
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: Header(
                maxHeight: 80,
                minHeight: 80,
                widget: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: AppColors.purpleBlue,
                              size: 30,
                            ),
                          ),
                          controller: widget.controller,
                        ),
                      ),
                      Row(
                        children: const [
                          RegisterSensorBottomSheet(),
                          FilterBottomSheet(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Sensores',
                                  style: TextStyle(
                                      fontSize: 18, color: AppColors.navyBlue),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'Status',
                                  style: TextStyle(
                                      fontSize: 18, color: AppColors.navyBlue),
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            height: 40,
                            thickness: 1.2,
                            color: AppColors.purpleBlue,
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: sensorsList.length,
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
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: SensorEditBottomSheet(
                                        sensorName: sensor,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          status,
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: getTextColor(status),
                                          ),
                                        ),
                                        const FieldTilePopupButton(),
                                      ],
                                    ),
                                  )
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
