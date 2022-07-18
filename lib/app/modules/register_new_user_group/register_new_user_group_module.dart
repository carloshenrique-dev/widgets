import 'package:flutter_modular/flutter_modular.dart';
import 'register_new_user_group_page.dart';

class RegisterNewUserGroupModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const RegisterNewUserGroupPage(),
        )
      ];
}
