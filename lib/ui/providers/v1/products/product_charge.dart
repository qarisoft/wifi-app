import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/app.dart';
import '../../../../domain/use_cases/product/product.dart';

part 'product_charge.g.dart';

@riverpod
class ProductsCharge extends _$ProductsCharge {
  final ProductUseCase useCase = App.di<ProductUseCase>();

  Future<List<ProductCharges>> fetch() async {
    return (await useCase.all()).fold((l) => [], (r) => r);
  }

  @override
  FutureOr<List<ProductCharges>> build() async {
    return await fetch();
  }
}
