import 'package:flutter_modular/flutter_modular.dart';
import 'modules/boleto_generated/boleto_generated_module.dart';
import 'modules/clientless_purchase/clientless_purchase_module.dart';
import 'modules/config_farm_fields/config_farm_fields_module.dart';
import 'modules/config_user/config_user_module.dart';
import 'modules/configure_sensor/configure_sensor_module.dart';
import 'modules/edit_farm_data/edit_farm_data_module.dart';
import 'modules/farm_data/farm_data_module.dart';
import 'modules/fields/fields_module.dart';
import 'modules/financial_data/financial_data_module.dart';
import 'modules/finish_registration/finish_registration_module.dart';
import 'modules/data_sharing/data_sharing_module.dart';
import 'modules/locate_sensor/locate_sensor_module.dart';
import 'modules/login/login_module.dart';
import 'modules/no_coverage_purchase/no_coverage_purchase_module.dart';
import 'modules/otp/otp_module.dart';
import 'modules/payment/payment_module.dart';
import 'modules/personal_data/personal_data_module.dart';
import 'modules/plan/config_plan/config_plan_module.dart';
import 'modules/plan/new_customer/plan_new_customer_module.dart';
import 'modules/plan/old_customer/plan_old_customer_module.dart';
import 'modules/reading_test/reading_test_module.dart';
import 'modules/readings/readings_module.dart';
import 'modules/receipt/receipt_module.dart';
import 'modules/recover_password/recover_password_module.dart';
import 'modules/register/register_module.dart';
import 'modules/register_card/register_card_module.dart';
import 'modules/register_new_user/register_new_user_module.dart';
import 'modules/register_new_user_group/register_new_user_group_module.dart';
import 'modules/saved_personal_data/saved_personal_data_module.dart';
import 'modules/select_farm/select_farm_module.dart';
import 'modules/splash/splash_page.dart';
import 'modules/updates/updates_module.dart';
import 'modules/welcome/welcome_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const SplashPage(),
        ),
        ModuleRoute(
          '/otp/',
          module: OtpModule(),
        ),
        ModuleRoute(
          '/register/',
          module: RegisterModule(),
        ),
        ModuleRoute(
          '/selectFarm/',
          module: SelectFarmModule(),
        ),
        ModuleRoute(
          '/clientlessPurchase/',
          module: ClientlessPurchaseModule(),
        ),
        ModuleRoute(
          '/noCoveragePurchase/',
          module: NoCoverageModule(),
        ),
        ModuleRoute(
          '/boletoGenerated/',
          module: BoletoGeneratedModule(),
        ),
        ModuleRoute(
          '/readings/',
          module: ReadingsModule(),
        ),
        ModuleRoute(
          '/personalData/',
          module: PersonalDataModule(),
        ),
        ModuleRoute(
          '/financialData/',
          module: FinancialDataModule(),
        ),
        ModuleRoute(
          '/login/',
          module: LoginModule(),
        ),
        ModuleRoute(
          '/welcome/',
          module: WelcomeModule(),
        ),
        ModuleRoute(
          '/fields/',
          module: FieldsModule(),
        ),
        ModuleRoute(
          '/farmData/',
          module: FarmDataModule(),
        ),
        ModuleRoute(
          '/configureSensor/',
          module: ConfigureSensorModule(),
        ),
        ModuleRoute(
          '/payment/',
          module: PaymentModule(),
        ),
        ModuleRoute(
          '/recover/',
          module: RecoverPasswordModule(),
        ),
        ModuleRoute(
          '/registerNewUser/',
          module: RegisterNewUserModule(),
        ),
        ModuleRoute(
          '/locateSensor/',
          module: LocateSensorModule(),
        ),
        ModuleRoute(
          '/readingTest/',
          module: ReadingTestModule(),
        ),
        ModuleRoute(
          '/dataSharing/',
          module: DataSharingModule(),
        ),
        ModuleRoute(
          '/configureUser/',
          module: ConfigUserModule(),
        ),
        ModuleRoute(
          '/configFarmFields/',
          module: ConfigFarmFieldsModule(),
        ),
        ModuleRoute(
          '/planNewCustomer/',
          module: PlanNewCustomerModule(),
        ),
        ModuleRoute(
          '/planOldCustomer/',
          module: PlanOldCustomerModule(),
        ),
        ModuleRoute(
          '/configPlan/',
          module: ConfigPlanModule(),
        ),
        ModuleRoute(
          '/update/',
          module: UpdatesModule(),
        ),
        ModuleRoute(
          '/registerNewUserGroup/',
          module: RegisterNewUserGroupModule(),
        ),
        ModuleRoute(
          '/registerCard/',
          module: RegisterCardModule(),
        ),
        ModuleRoute(
          '/finishRegistration/',
          module: FinishRegistrationModule(),
        ),
        ModuleRoute(
          '/editFarmData/',
          module: EditFarmDataModule(),
        ),
        ModuleRoute(
          '/receipt/',
          module: ReceiptModule(),
        ),
        ModuleRoute(
          '/savedPersonalData/',
          module: SavedPersonalDataModule(),
        ),
      ];
}
