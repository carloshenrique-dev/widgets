import 'package:flutter_modular/flutter_modular.dart';
import 'edit_farm_data_page.dart';

class EditFarmDataModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const EditFarmDataPage(),
        )
      ];
}
