import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
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
        Icons.filter_alt,
        color: AppColors.purpleBlue,
        size: 30,
      ),
    );
  }
}
