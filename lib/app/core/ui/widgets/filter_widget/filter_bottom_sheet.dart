import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/bottom_sheet_header.dart';
import 'expansion_tile_widget.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({Key? key}) : super(key: key);

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  final List<bool> _itemChecked = <bool>[];
  final List<String> tileItems = ['Status', 'Fazenda', 'Talhão', 'Cultura'];
  final List<String> items = ['Em trânsito', 'Recebido', 'Registrado'];
  String? selectedItem = 'Status';

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                const BottomSheetHeader(
                  title: 'Filtrar por:',
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: tileItems.length,
                    itemBuilder: (ctx, index) {
                      return ExpansionTileWidget(
                        itemChecked: _itemChecked,
                        items: items,
                        title: tileItems[index],
                      );
                    },
                  ),
                ),
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
