import 'package:flutter_modular/flutter_modular.dart';
import 'receipt_page.dart';

class ReceiptModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const ReceiptPage(),
        ),
      ];
}
