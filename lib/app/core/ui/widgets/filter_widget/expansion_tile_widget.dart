import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';

class ExpansionTileWidget extends StatefulWidget {
  final String title;
  final List<String> items;
  final List<bool> itemChecked;
  final Function(bool?)? onChanged;

  const ExpansionTileWidget({
    Key? key,
    required this.title,
    required this.items,
    required this.itemChecked,
    this.onChanged,
  }) : super(key: key);

  @override
  State<ExpansionTileWidget> createState() => _ExpansionTileWidgetState();
}

class _ExpansionTileWidgetState extends State<ExpansionTileWidget> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        widget.title,
        style: const TextStyle(
          color: AppColors.navyBlue,
          fontSize: 18,
        ),
      ),
      tilePadding: const EdgeInsets.all(10),
      iconColor: AppColors.navyBlue,
      collapsedIconColor: AppColors.navyBlue,
      children: widget.items.map((item) {
        widget.itemChecked.add(false);
        final int index_ = widget.items.indexOf(item);
        return CheckboxListTile(
          title: Text(
            item,
            style: TextStyle(
              fontSize: 18,
              color: !widget.itemChecked[index_]
                  ? Colors.grey
                  : AppColors.purpleBlue,
            ),
          ),
          value: widget.itemChecked[index_],
          contentPadding: const EdgeInsets.all(8),
          activeColor: AppColors.purpleBlue,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool? newValue) => setState(() {
            widget.itemChecked[index_] = newValue!;
          }),
        );
      }).toList(),
    );
  }
}
