import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/welcome/welcome_module.dart';
import 'modules/fields/fields_module.dart';
import 'modules/login/login_module.dart';
import 'modules/otp/otp_module.dart';
import 'modules/splash/splash_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/splash/', child: (context, args) => const SplashPage()),
        ModuleRoute('/otp/', module: OtpModule()),
        ModuleRoute('/initial/', module: WelcomeModule()),
        ModuleRoute('/login/', module: LoginModule()),
        ModuleRoute('/', module: FieldsModule()),
      ];
}
