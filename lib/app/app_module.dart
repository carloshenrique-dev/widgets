import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/configure_sensor/configure_sensor_module.dart';
import 'package:widgets/app/modules/farm_data/farm_data_module.dart';
import 'package:widgets/app/modules/fields/fields_module.dart';
import 'package:widgets/app/modules/welcome/welcome_module.dart';
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
        ModuleRoute('/otp/', module: OtpModule()),
        ModuleRoute('/initial/', module: WelcomeModule()),
        ModuleRoute('/fields/', module: FieldsModule()),
        ModuleRoute('/farmData/', module: FarmDataModule()),
        ModuleRoute('/configureSensor/', module: ConfigureSensorModule()),
        ModuleRoute('/login/', module: LoginModule()),
        ModuleRoute('/register/', module: RegisterModule()),
        ModuleRoute('/welcome/', module: WelcomeModule()),
        ModuleRoute('/payment/', module: PaymentModule()),
      ];
}
