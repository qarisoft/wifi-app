import 'package:app/core/app.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:app/domain/index.dart';

part 'products.g.dart';

@Riverpod(keepAlive: true)
class Products extends _$Products {
  final ProductUseCase useCase = App.di<ProductUseCase>();

  Future<List<Product>> fetch() async {
    return (await useCase.getAll()).fold((l) => [], (r) => r);
  }

  @override
  FutureOr<List<Product>> build() async {
    return fetch();
  }

  Future<void> delete(int id) async {
    await Future.delayed(const Duration(seconds: 2));
    await useCase.delete(id);
    final data = await fetch();
    state = AsyncData(data);
    return;
  }

  Future<void> create({required String name, required double price}) async {
    await Future.delayed(const Duration(seconds: 2));
    (await useCase.add({'name': name, 'price': price})).fold((l) => {},
        (r) async {
      final data = await fetch();
      state = AsyncData(data);
    });
    return;
  }
}
