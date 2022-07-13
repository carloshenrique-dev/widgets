import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/no_coverage_purchase/no_coverage_purchase_page.dart';

class NoCoverageModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (context, args) => const NoCoveragePage())];
}
