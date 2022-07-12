import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/initial/welcome_module.dart';
import 'modules/otp/otp_module.dart';
import 'modules/splash/splash_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashPage()),
        ModuleRoute('/otp/', module: OtpModule()),
        ModuleRoute('/initial/', module: WelcomeModule()),
      ];
}
