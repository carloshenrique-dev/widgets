import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/payment/payment_page.dart';
import 'boleto/boleto_module.dart';
import 'card/card_module.dart';
import 'pix/pix_module.dart';

class PaymentModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const PaymentPage(),
        ),
        ModuleRoute(
          '/pix/',
          module: PixModule(),
        ),
        ModuleRoute(
          '/boleto/',
          module: BoletoModule(),
        ),
        ModuleRoute(
          '/card/',
          module: CardModule(),
        ),
      ];
}
