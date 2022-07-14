import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/configure_sensor/configure_sensor_page.dart';

class ConfigureSensorModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (context, args) => const ConfigureSensorPage())];
}
