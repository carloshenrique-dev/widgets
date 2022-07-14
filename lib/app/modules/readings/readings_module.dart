import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/readings/readings_page.dart';

class ReadingsModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const ReadingsPage(),
        ),
      ];
}
