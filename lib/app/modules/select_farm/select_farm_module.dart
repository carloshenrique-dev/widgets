import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/select_farm/select_farm_page.dart';

class SelectFarmModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const SelectFarmPage(),
        ),
      ];
}
