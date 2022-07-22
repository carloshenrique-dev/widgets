import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/readings/read_screen_with_sensor/map/map_page.dart';

class MapModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const MapPage(),
        ),
      ];
}
