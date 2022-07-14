import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/boleto_generated/boleto_generated_page.dart';

class BoletoGeneratedModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const BoletoGeneratedPage(),
        ),
      ];
}
