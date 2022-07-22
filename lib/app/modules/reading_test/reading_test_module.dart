import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/reading_test/reading_test_page.dart';

class ReadingTestModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const ReadingTestPage(),
        ),
      ];
}
