import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/locate_sensor/locate_sensor_page.dart';

class LocateSensorModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (context, args) => const LocateSensorPage())];
}
