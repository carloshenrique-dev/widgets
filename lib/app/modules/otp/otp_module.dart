import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/otp/otp_page.dart';

class OtpModule extends Module {
  @override
  List<Bind> get binds => [
        //BlocBind.lazySingleton((i) => OtpController()),
      ];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (context, args) => const OtpPage())];
}
