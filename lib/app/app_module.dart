import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/boleto_generated/boleto_generated_module.dart';
import 'package:widgets/app/modules/clientless_purchase/clientless_purchase_module.dart';
import 'package:widgets/app/modules/no_coverage_purchase/no_coverage_purchase_module.dart';
import 'package:widgets/app/modules/personal_data/personal_data_module.dart';
import 'package:widgets/app/modules/readings/readings_module.dart';
import 'package:widgets/app/modules/splash/splash_page.dart';

import 'package:widgets/app/modules/welcome/welcome_module.dart';
import 'modules/otp/otp_module.dart';
import 'modules/register/register_module.dart';
//import 'modules/splash/splash_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        //ChildRoute('/', child: (context, args) => const PersonalDataPage()),
        ChildRoute('/', child: (context, args) => const SplashPage()),
        ModuleRoute('/otp/', module: OtpModule()),
        ModuleRoute('/initial/', module: WelcomeModule()),
        ModuleRoute('/register/', module: RegisterModule()),
        ModuleRoute('/clientlessPurchase/', module: ClientlessPurchaseModule()),
        ModuleRoute('/noCoveragePurchase/', module: NoCoverageModule()),
        ModuleRoute('/boletoGenerated/', module: BoletoGeneratedModule()),
        ModuleRoute('/readings/', module: ReadingsModule()),
        ModuleRoute('/personalData/', module: PersonalDataModule())
      ];
}
