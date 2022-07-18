import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/widgets/bottom_sheet_header.dart';
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
          )),
          builder: (context) => Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: const <Widget>[
                BottomSheetHeader(
                  title: 'Filtrar por:',
                ),
                DropdownButtonWidget()
              ],
            ),
          ),
        );
      },
      icon: const Icon(
        Icons.filter_list,
        color: AppColors.purpleBlue,
        size: 30,
      ),
    );
  }
}
