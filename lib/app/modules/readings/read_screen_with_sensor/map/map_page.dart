import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/widgets/bottom_navigation_bar.dart';
import 'package:widgets/app/modules/readings/read_screen_with_sensor/map/widgets/bottom_sheet_view.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bottomSheet = BottomSheetView();

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const BottomNavigationWidget(),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ExpansionTile(
                  iconColor: AppColors.purpleBlue,
                  collapsedIconColor: AppColors.purpleBlue,
                  title: const Text(
                    'Visualizar:',
                    style: TextStyle(color: AppColors.grey),
                  ),
                  subtitle: RichText(
                    text: const TextSpan(
                      text: 'Fazenda Fortim - Talhão Santa Ana - Sensor 02',
                      style: TextStyle(
                        color: AppColors.purpleBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  onExpansionChanged: (value) {
                    bottomSheet.showBottomSheetView(context);
                  },
                ),
                Container(
                  color: AppColors.white,
                  height: 300,
                  width: size.width * .87,
                ),
                const SizedBox(height: 20),
                Container(
                  color: AppColors.white,
                  height: 180,
                  width: size.width * .87,
                ),
                TextButton(
                  child: const Text('Tela de Leitura sem sensor'),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
