import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/financial_data/financial_data_page.dart';

class FinancialDataModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const FinancialDataPage(),
        ),
      ];
}
