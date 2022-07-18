import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/farm_tile_popup_button.dart';
import 'package:widgets/app/core/ui/widgets/filter_widget/filter_bottom_sheet.dart';
import 'package:widgets/app/core/ui/widgets/header.dart';

class FarmDataPage extends StatefulWidget {
  const FarmDataPage({super.key});

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
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dados da Fazenda'),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: Header(
                maxHeight: 60,
                minHeight: 60,
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        color: AppColors.purpleBlue,
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const FilterBottomSheet(),
                  ],
                ),
              ),
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
                        color: AppColors.navyBlue,
                        fontSize: 20,
                      ),
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
