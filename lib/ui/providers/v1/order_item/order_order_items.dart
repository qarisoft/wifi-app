import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/models/v1/orderItem.dart';
import 'order_items_ready.dart';

part 'order_order_items.g.dart';

@Riverpod(dependencies: [orderItemsReady])
List<OrderItem> orderOrderItems(OrderOrderItemsRef ref, int orderId) {
  final orderItems =
      ref.watch(orderItemsReadyProvider).where((o) => o.orderId == orderId);

  return [...orderItems];
}
