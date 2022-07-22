import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/plan/old_customer/plan_old_customer_page.dart';

class PlanOldCustomerModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const PlanOldCustomerPage(),
        ),
      ];
}
