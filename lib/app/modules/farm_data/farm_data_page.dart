import 'package:flutter/material.dart';

import '../../core/ui/themes/app_colors.dart';
import '../../core/ui/widgets/farm_tile_popup_button.dart';
import '../../core/ui/widgets/header_widget.dart';

class FarmDataPage extends StatefulWidget {
  const FarmDataPage({Key? key}) : super(key: key);

  @override
  State<FarmDataPage> createState() => _FarmDataPageState();
}

class _FarmDataPageState extends State<FarmDataPage> {
  List<String> farms = [
    'Fazenda Gloriosa',
    'Fazenda Ribeirinha',
    'Fazenda Fortim'
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dados da Fazenda'),
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
      farms.length,
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
                      farms[index],
                      style: const TextStyle(
                          color: AppColors.navyBlue, fontSize: 20),
                    ),
                  ],
                ),
                const FarmTilePopupButton(),
              ],
            ),
          ),
        );
      },
    );
  }
}
