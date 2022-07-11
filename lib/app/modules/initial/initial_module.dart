import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/initial/initial_page.dart';

class InitialModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => InitialController()),
      ];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (context, args) => const InitialPage())];
}
