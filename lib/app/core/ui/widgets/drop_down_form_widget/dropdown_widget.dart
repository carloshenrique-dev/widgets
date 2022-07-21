import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:validatorless/validatorless.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';

class DropdownWidget extends StatelessWidget {
  final Function(String?)? onSaved;
  const DropdownWidget({super.key, this.onSaved});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      iconSize: 20,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
      ),
      items: const [
        DropdownMenuItem(
          child: Text('a'),
        ),
      ],
      elevation: 0,
      icon: const Icon(
        FontAwesomeIcons.angleDown,
        color: AppColors.purpleBlue,
      ),
      isExpanded: true,
      hint: const Text(
        'Todas as fazendas',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      onChanged: (select) => {},
      onSaved: onSaved,
      validator: Validatorless.required(
        'Informe a atividade principal',
      ),
    );
  }
}
