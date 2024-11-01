import 'package:app/domain/index.dart';
import 'package:app/ui/providers/v1/customers/customers.dart';

// import 'package:app/ui/providers/index.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'orders.dart';

part 'get_order.g.dart';

@Riverpod(dependencies: [ordersReady])
Order? getOrder(GetOrderRef ref, int orderId) {
  final orders = ref.watch(ordersReadyProvider);
  final o = orders.where((o) => o.id == orderId);
  if (o.isNotEmpty) {
    return o.first;
  }
  return null;
}

@Riverpod(dependencies: [ordersReady, customersReady])
(Customer?, Order?) getOrderWithCustomer(
    GetOrderWithCustomerRef ref, int orderId) {
  final order_ = ref.watch(ordersReadyProvider).where((o) => o.id == orderId);
  if (order_.isNotEmpty) {
    final order = order_.first;
    if (order.customerId == 0) return (null, order);
    final customer_ = ref
        .watch(customersReadyProvider)
        .where((c) => c.id == order.customerId);
    if (customer_.isNotEmpty) return (customer_.first, order);
  }

  return (null, null);
}
