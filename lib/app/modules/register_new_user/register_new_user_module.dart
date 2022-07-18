import 'package:flutter_modular/flutter_modular.dart';
import 'register_new_user_page.dart';

class RegisterNewUserModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const RegisterNewUserPage(),
        )
      ];
}
