import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/config_farm_fields/config_farm_fields_page.dart';

class ConfigFarmFieldsModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const ConfigFarmFieldsPage()),
      ];
}
