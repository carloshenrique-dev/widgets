import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';

class CompanyCard extends StatefulWidget {
  final bool value;
  final void Function(bool?)? onChanged;
  final String assetName;
  final String title;
  final String date;
  final String size;
  const CompanyCard({
    required this.size,
    required this.value,
    this.onChanged,
    required this.assetName,
    required this.title,
    required this.date,
    Key? key,
  }) : super(key: key);

  @override
  State<CompanyCard> createState() => _CompanyCardState();
}

class _CompanyCardState extends State<CompanyCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              Checkbox(
                value: widget.value,
                onChanged: widget.onChanged,
              ),
              Image(
                image: AssetImage(widget.assetName),
              ),
              const SizedBox(width: 10),
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Desde:',
                      style: TextStyle(fontSize: 16, color: AppColors.black)),
                  Text(
                    widget.date,
                    style: const TextStyle(fontSize: 16, color: AppColors.gray),
                  ),
                ],
              ),
              const SizedBox(width: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Volume de Dados:',
                      style: TextStyle(fontSize: 16, color: AppColors.black)),
                  Text(
                    widget.size,
                    style: const TextStyle(fontSize: 16, color: AppColors.gray),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
