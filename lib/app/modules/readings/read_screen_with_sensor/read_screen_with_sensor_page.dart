import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';
import 'package:widgets/app/core/ui/themes/app_text_style.dart';
import 'package:widgets/app/core/ui/widgets/drawer_menu.dart';
import 'package:widgets/app/modules/readings/read_screen_with_sensor/map/map_page.dart';
import 'package:widgets/app/modules/readings/read_screen_with_sensor/sensors_list/sensor_list_page.dart';

class ReadScreenWithSensorPage extends StatelessWidget {
  const ReadScreenWithSensorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Leitura'),
          // titleSpacing: 20,
          bottom: TabBar(
            padding: EdgeInsets.zero,
            isScrollable: true,
            labelStyle: AppTextStyle.textLink,
            physics: const BouncingScrollPhysics(),
            labelColor: AppColors.green,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3,
            indicatorColor: AppColors.green,
            tabs: [
              SizedBox(
                width: width * .43,
                child: const Tab(
                  text: 'Mapa',
                ),
              ),
              SizedBox(
                width: width * .43,
                child: const Tab(
                  text: 'Lista de sensores',
                ),
              ),
            ],
          ),
        ),
        drawer: const DrawerMenu(),
        body: const TabBarView(
          children: [
            MapPage(),
            SensorListPage(),
          ],
        ),
      ),
    );
  }
}
