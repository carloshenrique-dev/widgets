import 'package:flutter_modular/flutter_modular.dart';
import 'finish_registration_page.dart';

class FinishRegistrationModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const FinishRegistrationPage(),
        )
      ];
}
