import 'package:flutter_modular/flutter_modular.dart';
import 'welcome_page.dart';

class WelcomeModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => WelcomeController()),
      ];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (context, args) => const WelcomePage())];
}
