import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../fields/fields_page.dart';
import '../../../core/ui/themes/app_colors.dart';

class ConfigureSensorPopupButton extends StatelessWidget {
  final String sensorStatus;

  const ConfigureSensorPopupButton({
    super.key,
    required this.sensorStatus,
  });

  Map<String, IconData?> checkStatus(String status) {
    if (status == 'Em Trânsito') {
      status = 'Recebido';
      return {status: Icons.check_box_outlined};
    } else if (status == 'Entregue') {
      status = 'Registrar';
      return {status: FontAwesomeIcons.locationDot};
    } else {
      status = 'Em Trânsito';
      return {status: Icons.map};
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.more_vert),
      itemBuilder: (_) => [
        PopupMenuItem(
          height: 50,
          padding: const EdgeInsets.all(10),
          value: PopupOptions.data,
          child: Row(
            children: [
              Icon(
                checkStatus(sensorStatus).values.elementAt(0),
                color: AppColors.purpleBlue,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                checkStatus(sensorStatus)
                    .keys
                    .toString()
                    .replaceAll(RegExp('[()]'), ''),
                style: const TextStyle(
                  color: AppColors.purpleBlue,
                  fontSize: 17,
                ),
              ),
            ],
          ),
          onTap: () {},
        ),
        PopupMenuItem(
          height: 50,
          padding: const EdgeInsets.all(10),
          value: PopupOptions.remove,
          child: Row(
            children: const [
              Icon(Icons.delete_rounded, color: Colors.red),
              SizedBox(
                width: 20,
              ),
              Text(
                'Remover',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 17,
                ),
              ),
            ],
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
