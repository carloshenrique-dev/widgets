import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/farm_data/farm_data_page.dart';

class FarmDataModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (context, args) => const FarmDataPage())];
}
