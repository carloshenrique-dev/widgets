import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/config_user/config_user_page.dart';

class ConfigUserModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (context, args) => const ConfigUserPage())];
}
