import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/app/modules/config_farm_fields/config_farm_fields_module.dart';
import 'package:widgets/app/modules/config_farm_fields/config_farm_fields_page.dart';
import 'package:widgets/app/modules/config_user/config_user_module.dart';
import 'package:widgets/app/modules/data_sharing/data_sharing_module.dart';
import 'modules/boleto_generated/boleto_generated_module.dart';
import 'modules/clientless_purchase/clientless_purchase_module.dart';
import 'modules/configure_sensor/configure_sensor_module.dart';
import 'modules/farm_data/farm_data_module.dart';
import 'modules/fields/fields_module.dart';
import 'modules/financial_data/financial_data_module.dart';
import 'modules/login/login_module.dart';
import 'modules/no_coverage_purchase/no_coverage_purchase_module.dart';
import 'modules/otp/otp_module.dart';
import 'modules/payment/payment_module.dart';
import 'modules/personal_data/personal_data_module.dart';
import 'modules/readings/readings_module.dart';
import 'modules/recover_password/recover_password_module.dart';
import 'modules/register/register_module.dart';
import 'modules/select_farm/select_farm_module.dart';
//import 'modules/splash/splash_page.dart';
import 'modules/welcome/welcome_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const ConfigFarmFieldsPage()),
        //ChildRoute('/', child: (context, args) => const SplashPage()),
        ModuleRoute('/otp/', module: OtpModule()),
        ModuleRoute('/register/', module: RegisterModule()),
        ModuleRoute('/selectFarm/', module: SelectFarmModule()),
        ModuleRoute('/clientlessPurchase/', module: ClientlessPurchaseModule()),
        ModuleRoute('/noCoveragePurchase/', module: NoCoverageModule()),
        ModuleRoute('/boletoGenerated/', module: BoletoGeneratedModule()),
        ModuleRoute('/readings/', module: ReadingsModule()),
        ModuleRoute('/personalData/', module: PersonalDataModule()),
        ModuleRoute('/financialData/', module: FinancialDataModule()),
        ModuleRoute('/dataSharing/', module: DataSharingModule()),
        ModuleRoute('/login/', module: LoginModule()),
        ModuleRoute('/welcome/', module: WelcomeModule()),
        ModuleRoute('/fields/', module: FieldsModule()),
        ModuleRoute('/farmData/', module: FarmDataModule()),
        ModuleRoute('/configureSensor/', module: ConfigureSensorModule()),
        ModuleRoute('/configureUser/', module: ConfigUserModule()),
        ModuleRoute('/configFarmFields/', module: ConfigFarmFieldsModule()),
        ModuleRoute('/payment/', module: PaymentModule()),
        ModuleRoute('/recover/', module: RecoverPasswordModule()),
      ];
}
