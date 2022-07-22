import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/plan/config_plan/config_plan_page.dart';

class ConfigPlanModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const ConfigPlanPage(),
        ),
      ];
}
