import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/clientless_purchase/clientless_purchase_page.dart';

class ClientlessPurchaseModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const ClientlessPurchasePage(),
        )
      ];
}
