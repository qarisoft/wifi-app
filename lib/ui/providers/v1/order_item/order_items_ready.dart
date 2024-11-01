import 'package:app/domain/index.dart' show OrderItem;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'order_item.dart' show OrderItems, orderItemsProvider;

part 'order_items_ready.g.dart';

@Riverpod(dependencies: [OrderItems], keepAlive: true)
List<OrderItem> orderItemsReady(OrderItemsReadyRef ref) {
  final orderItems = ref
      .watch(orderItemsProvider)
      .when(data: (d) => d, error: (e, r) => [], loading: () => []);

  return [...orderItems];
}
