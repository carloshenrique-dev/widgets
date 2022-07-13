import 'package:flutter_modular/flutter_modular.dart';
import 'login_page.dart';

class LoginModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => LoginController()),
      ];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (context, args) => const LoginPage())];
}
