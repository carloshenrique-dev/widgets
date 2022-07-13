import 'package:flutter_modular/flutter_modular.dart';
import 'modules/login/login_module.dart';
import 'modules/otp/otp_module.dart';
import 'modules/payment/payment_module.dart';
import 'modules/register/register_module.dart';
import 'modules/splash/splash_page.dart';
import 'modules/welcome/welcome_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashPage()),
        ModuleRoute('/login/', module: LoginModule()),
        ModuleRoute('/register/', module: RegisterModule()),
        ModuleRoute('/otp/', module: OtpModule()),
        ModuleRoute('/welcome/', module: WelcomeModule()),
        ModuleRoute('/payment/', module: PaymentModule()),
      ];
}
