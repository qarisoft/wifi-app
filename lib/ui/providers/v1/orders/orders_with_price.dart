import 'package:app/domain/index.dart';
import 'package:app/ui/providers/index.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../order_item/order_item.dart';
import '../products/product_ready.dart';

// import '../products/products.dart';
import 'orders.dart';

part 'orders_with_price.g.dart';

@Riverpod(dependencies: [Orders, OrderItems])
List<Order> orderWithPrice(OrderWithPriceRef ref) {
  final orders = ref.watch(ordersProvider).value ?? [];
  final orderItems = ref.watch(orderItemsProvider).value ?? [];
  final data = orders.map((o) {
    final price = orderItems
        .where((oI) => oI.orderId == o.id)
        .toList()
        .fold(0.0, (a, b) => a + b.price);
    return o.copyWith(totalPrice: price);
  }).toList();
  return data;
}

@Riverpod(dependencies: [Orders, OrderItems, productsReady])
int orderWithPriceAndCost(OrderWithPriceAndCostRef ref) {
  final orders = ref.watch(ordersProvider).value ?? [];
  final products = ref.watch(productsReadyProvider);
  final orderItems = ref.watch(orderItemsProvider).value ?? [];
  final data = orders.map((o) {
    final price = orderItems
        .where((oI) => oI.orderId == o.id)
        .toList()
        .fold(0.0, (a, b) => a + b.price);

    return o.copyWith(totalPrice: price);
  }).toList();
  return products.length;
}
