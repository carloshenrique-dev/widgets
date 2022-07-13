import 'package:flutter_modular/flutter_modular.dart';
import 'register_page.dart';

class RegisterModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => LoginController()),
      ];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (context, args) => const RegisterPage())];
}
