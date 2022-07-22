import 'package:flutter_modular/flutter_modular.dart';

import 'package:widgets/app/modules/data_sharing/data_sharing_page.dart';

class DataSharingModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (context, args) => const DataSharingPage())];
}
