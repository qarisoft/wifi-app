import 'package:app/core/app.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:app/domain/index.dart';

part 'customers.g.dart';

@Riverpod(keepAlive: true)
class Customers extends _$Customers {
  final CustomerUseCase useCase = App.di<CustomerUseCase>();

  Future<List<Customer>> fetch() async {
    return (await useCase.getAll()).fold((l) => [], (r) => r);
  }

  @override
  FutureOr<List<Customer>> build() async {
    return fetch();
  }

  Future<void> delete(int id) async {
    await Future.delayed(const Duration(seconds: 2));
    await useCase.delete(id);
    final data = await fetch();
    state = AsyncData(data);
    return;
  }

  Future<void> create({required String name, required String phone}) async {
    await Future.delayed(const Duration(seconds: 2));
    (await useCase.add({'name': name, 'phone': phone})).fold((l) => {},
        (r) async {
      final data = await fetch();
      state = AsyncData(data);
    });
    return;
  }
}

@Riverpod(dependencies: [Customers])
List<Customer> customersReady(CustomersReadyRef ref) {
  return ref.watch(customersProvider).value ?? [];
}
