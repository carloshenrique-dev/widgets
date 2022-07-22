import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/readings/read_screen_with_sensor/map/map_module.dart';
import 'package:widgets/app/modules/readings/read_screen_with_sensor/read_screen_with_sensor_page.dart';
import 'package:widgets/app/modules/readings/read_screen_with_sensor/sensors_list/sensor_list_module.dart';

class ReadScreenWithSensorModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const ReadScreenWithSensorPage(),
        ),
        ModuleRoute(
          '/readMap/',
          module: MapModule(),
        ),
        ModuleRoute(
          '/readSensorList/',
          module: SensorListModule(),
        ),
      ];
}
