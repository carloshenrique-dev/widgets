import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';

class DropdownButtonWidget extends StatefulWidget {
  const DropdownButtonWidget({Key? key}) : super(key: key);

  @override
  State<DropdownButtonWidget> createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  final List<bool> _boolChecked = <bool>[];
  final List<String> dropdownItems = ['Status', 'Fazenda', 'Talhão', 'Cultura'];
  final List<String> statusItem = ['Em trânsito', 'Recebido', 'Registrado'];
  String? selectedItem = 'Status';

  @override
  Widget build(BuildContext context) {
    Color getTextColor(bool value) {
      if (!value) {
        return Colors.grey;
      } else {
        return AppColors.purpleBlue;
      }
    }

    return Expanded(
      child: ListView.builder(
        itemCount: dropdownItems.length,
        itemBuilder: (ctx, index) {
          return Column(
            children: [
              ExpansionTile(
                title: Text(
                  dropdownItems[index],
                  style: const TextStyle(
                    color: AppColors.navyBlue,
                    fontSize: 18,
                  ),
                ),
                tilePadding: const EdgeInsets.all(10),
                iconColor: AppColors.navyBlue,
                collapsedIconColor: AppColors.navyBlue,
                children: statusItem.map((item) {
                  _boolChecked.add(false);
                  int index_ = statusItem.indexOf(item);
                  return CheckboxListTile(
                    title: Text(item,
                        style: TextStyle(
                            fontSize: 18,
                            color: getTextColor(_boolChecked[index_]))),
                    value: _boolChecked[index_],
                    contentPadding: const EdgeInsets.all(8),
                    activeColor: AppColors.purpleBlue,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool? newValue) => setState(() {
                      _boolChecked[index_] = newValue!;
                    }),
                  );
                }).toList(),
              ),
            ],
          );
        },
      ),
    );
  }
}
