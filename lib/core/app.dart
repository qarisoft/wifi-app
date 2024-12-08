import 'package:app/data/service/db/sqlite.dart';
import 'package:app/data/service/storage.dart';
import 'package:app/data/use_cases/auth/check.dart';
import 'package:app/data/use_cases/auth/login.dart';
import 'package:app/data/use_cases/auth/register.dart';
import 'package:app/data/use_cases/cards/card.dart';
import 'package:app/data/use_cases/cards/gen_cards.dart';
import 'package:app/data/use_cases/cards/op_cards.dart';
import 'package:app/data/use_cases/payment.dart';
import 'package:app/data/use_cases/sales/sales.dart';
import 'package:app/data/use_cases/sys_use_case.dart';
import 'package:app/data/use_cases/years/year.dart';
import 'package:app/domain/service/storage.dart';
import 'package:app/domain/use_cases/v2/auth/auth.dart';
import 'package:app/domain/use_cases/v2/cards/cards.dart';
import 'package:app/domain/use_cases/v2/cards/operational_cards.dart';
import 'package:app/domain/use_cases/v2/core.dart';
import 'package:app/domain/use_cases/v2/sales/sales.dart';
import 'package:app/domain/use_cases/v2/years/year.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final class App {
  static GetIt di = GetIt.instance;

  static Future<void> init({required String path}) async {
    //
    final shared = await SharedPreferences.getInstance();
    di.registerLazySingleton<SharedPreferences>(() => shared);
    //
    di.registerLazySingleton<Storage>(() => StorageImpl(shared: di()));
    // di.registerLazySingleton<SqlService>(() => SqlTester());
    di.registerFactory<SqlService>(() => SqlService(path: path));
    // #####################################################
    //
    // di.registerFactory<UserUseCase>(()=>UserUseCaseI())
    di.registerFactory<LoginUseCase>(() => LoginUseCaseI(sql: di()));
    di.registerFactory<RegisterUseCase>(
        () => RegisterUseCaseI(sqlService: di()));
    //
    di.registerFactory<CardsUseCase>(() => CardsUseCaseI(service: di()));
    di.registerFactory<GnCardDtlUseCase>(
        () => GnCardDtlUseCaseI(service: di()));
    di.registerFactory<GnCardHdrUseCase>(
        () => GnCardHdrUseCaseI(service: di()));
    //
    di.registerFactory<OplCardsUseCase>(() => OplCardsUseCaseI(service: di()));
    //
    di.registerFactory<SlsOrderHdrUseCase>(
        () => SlsOrderHdrUseCaseI(service: di()));
    di.registerFactory<SlsOrderDtlUseCase>(
        () => SlsOrderDtlUseCaseI(service: di()));
    //
    di.registerFactory<PointOfSalesUseCase>(
        () => PointOfSalesUseCaseI(service: di()));
    //
    di.registerFactory<YearsUseCase>(() => YearsUseCaseI(service: di()));
    //
    di.registerFactory<PaymentsUseCase>(() => PaymentUseCaseI(service: di()));
    //
    di.registerFactory<SysSetupUseCase>(
        () => SysSetupUseCaseI(yearsUseCase: di()));

    //
    di.registerLazySingleton<CheckUserUC>(
        () => CheckUserNameExists(service: di()));
  }
}
