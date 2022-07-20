import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';

class UpdateCard extends StatefulWidget {
  final bool isChecked;
  final void Function(bool?)? onChanged;
  final String title;
  final String version;
  final String versionAvailable;
  const UpdateCard({
    required this.isChecked,
    this.onChanged,
    required this.title,
    required this.version,
    required this.versionAvailable,
    Key? key,
  }) : super(key: key);

  @override
  State<UpdateCard> createState() => _UpdateCardState();
}

class _UpdateCardState extends State<UpdateCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Checkbox(
                checkColor: AppColors.white,
                activeColor: AppColors.purpleBlue,
                value: widget.isChecked,
                onChanged: widget.onChanged,
              ),
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17),
            child: RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 16,
                  color: AppColors.black,
                ),
                children: <TextSpan>[
                  const TextSpan(text: 'Versão Atual: '),
                  TextSpan(
                    text: widget.version,
                    style: const TextStyle(
                      color: AppColors.gray,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17),
            child: RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 16,
                  color: AppColors.black,
                ),
                children: <TextSpan>[
                  const TextSpan(text: 'Versão Disponível: '),
                  TextSpan(
                    text: widget.versionAvailable,
                    style: const TextStyle(
                      color: AppColors.gray,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
