import 'package:app/domain/index.dart';
import 'package:get_it/get_it.dart';

final class App {
  static GetIt di = GetIt.instance;

  static void init({
    required ProductUseCase Function() productUseCase,
    required CustomerUseCase Function() customerUseCase,
    required OrderUseCase Function() orderUseCase,
    required OrderItemUseCase Function() orderItemUseCase,
  }) {
    di.registerLazySingleton<ProductUseCase>(() => productUseCase());
    di.registerLazySingleton<CustomerUseCase>(() => customerUseCase());
    di.registerLazySingleton<OrderUseCase>(() => orderUseCase());
    di.registerLazySingleton<OrderItemUseCase>(() => orderItemUseCase());
  }
}
