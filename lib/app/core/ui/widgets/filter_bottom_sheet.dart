import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({Key? key}) : super(key: key);

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  final bool _isChecked = false;
  final List<String> _items = ['Status', 'Fazenda', 'Talhão', 'Cultura'];
  String? selectedItem = 'Status';

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
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          const Icon(
                            Icons.filter_alt,
                            color: AppColors.purpleBlue,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Filtrar por:',
                            style: TextStyle(
                              color: AppColors.purpleBlue,
                              fontSize: 18,
                            ),
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
                      // DropdownButton<String>(
                      //   value: selectedItem,
                      //   items: _items.map((item) => DropdownMenuItem<String>(
                      //     value: item, 
                      //     child: const Text(''), 
                      //   )).toList()
                      //   onChanged: onChanged,
                      // )
                    ],
                  ),
                ));
      },
      icon: const Icon(
        Icons.filter_alt,
        color: AppColors.purpleBlue,
        size: 25.0,
      ),
    );
  }
}
