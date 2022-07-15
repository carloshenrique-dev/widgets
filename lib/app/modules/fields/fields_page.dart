import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/field_tile_popup_button.dart';
import '../../core/ui/widgets/header_widget.dart';

enum PopupOptions { data, remove }

class FieldsPage extends StatefulWidget {
  const FieldsPage({Key? key}) : super(key: key);

  @override
  State<FieldsPage> createState() => _FieldsPageState();
}

class _FieldsPageState extends State<FieldsPage> {
  List<String> plots = [
    'Talhão Asa Branca',
    'Talhão Espigão',
    'Talhão Santa Ana'
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Talhões'),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: HeaderWidget(),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                generateListTile(size),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> generateListTile(Size size) {
    return List<Padding>.generate(
      plots.length,
      (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Container(
            height: 80,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.agriculture,
                      size: 30,
                    ),
                    const SizedBox(width: 15),
                    Text(
                      plots[index],
                      style: const TextStyle(
                        color: AppColors.navyBlue,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const FieldTilePopupButton(),
              ],
            ),
          ),
        );
      },
    );
  }
}
