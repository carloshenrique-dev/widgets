import 'package:flutter_modular/flutter_modular.dart';
import 'register_card_page.dart';

class RegisterCardModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const RegisterCardPage(),
        )
      ];
}
