import 'package:flutter_modular/flutter_modular.dart';

import 'saved_personal_data_page.dart';

class SavedPersonalDataModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const SavedPersonalDataPage(),
        ),
      ];
}
