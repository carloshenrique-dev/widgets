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

  IconData changeIcon(String status) {
    if (status == 'Em Trânsito') {
      return Icons.check_box_outlined;
    } else if (status == 'Entregue') {
      return FontAwesomeIcons.locationDot;
    } else {
      return Icons.map;
    }
  }

  String changeText(String status) {
    if (status == 'Em Trânsito') {
      return 'Recebido';
    } else if (status == 'Entregue') {
      return 'Registrar';
    } else {
      return 'Em Trânsito';
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
                changeIcon(sensorStatus),
                color: AppColors.purpleBlue,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                changeText(sensorStatus),
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
