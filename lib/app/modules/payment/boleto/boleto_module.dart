import 'package:flutter_modular/flutter_modular.dart';
import 'boleto_page.dart';

class BoletoModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (context, args) => const BoletoPage())];
}
