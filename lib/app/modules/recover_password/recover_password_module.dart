import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/recover_password/recover_password_page.dart';

class RecoverPasswordModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const RecoverPasswordPage(),
        ),
      ];
}
