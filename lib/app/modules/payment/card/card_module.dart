import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/payment/card/card_page.dart';

class CardModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (context, args) => const CardPage())];
}
