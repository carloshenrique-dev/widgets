import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/widgets/dropdown_button_widget.dart';

import '../themes/app_colors.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({Key? key}) : super(key: key);

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
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
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: const [
                        Icon(
                          Icons.filter_alt,
                          color: AppColors.purpleBlue,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Filtrar por:',
                          style: TextStyle(
                            color: AppColors.purpleBlue,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(
                        Icons.close,
                        color: AppColors.purpleBlue,
                      ),
                    ),
                  ],
                ),
                const DropdownButtonWidget()
              ],
            ),
          ),
        );
      },
      icon: const Icon(
        Icons.filter_alt,
        color: AppColors.purpleBlue,
        size: 30,
      ),
    );
  }
}
