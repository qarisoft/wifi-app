import 'package:app/domain/index.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/app.dart';
import '../products/get_product.dart' show getProduct, getProductProvider;

part 'order_item.g.dart';

@Riverpod(dependencies: [getProduct], keepAlive: true)
class OrderItems extends _$OrderItems {
  final OrderItemUseCase useCase = App.di<OrderItemUseCase>();

  Future<List<OrderItem>> fetch() async =>
      (await useCase.getAll()).fold((l) => [], (r) => r);

  @override
  FutureOr<List<OrderItem>> build() async {
    return await fetch();
  }

  add({required int orderId, required int qt, required int productId}) async {
    final product = ref.read(getProductProvider(productId));
    (await useCase.create(OrderItem(
            id: 0,
            productId: productId,
            quantity: qt,
            price: product.price * qt,
            orderId: orderId)))
        .fold(
      (l) => {},
      (r) async {
        final s = await fetch();
        state = AsyncData(s);
      },
    );
  }
}
