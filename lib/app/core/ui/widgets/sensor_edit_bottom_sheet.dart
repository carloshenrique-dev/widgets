import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:widgets/app/core/ui/widgets/bottom_sheet_header.dart';

import '../themes/app_colors.dart';

class SensorEditBottomSheet extends StatelessWidget {
  final String? sensorName;

  const SensorEditBottomSheet({
    Key? key,
    required this.sensorName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
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
                                sensorName ?? '',
                                style: const TextStyle(
                                  color: AppColors.green,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            'nº',
                            style: TextStyle(fontSize: 14),
                          ),
                          //DROPDOWNBUTTON
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      'Fazenda',
                      style:
                          TextStyle(fontSize: 20, color: AppColors.purpleBlue),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'Talhão',
                      style:
                          TextStyle(fontSize: 20, color: AppColors.purpleBlue),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      child: Text(
        sensorName ?? '',
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 18,
        ),
      ),
    );
  }
}
