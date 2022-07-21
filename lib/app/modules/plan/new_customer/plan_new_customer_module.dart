import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/plan/new_customer/plan_new_customer_page.dart';

class PlanNewCustomerModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const PlanNewCustomerPage(),
        ),
      ];
}
