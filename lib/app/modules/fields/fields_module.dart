import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/fields/fields_page.dart';

class FieldsModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (context, args) => const FieldsPage())];
}
