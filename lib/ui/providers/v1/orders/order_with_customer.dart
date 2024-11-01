import 'package:app/domain/models/v1/customer.dart';
import 'package:app/domain/models/v1/order.dart';
import 'package:app/ui/providers/v1/customers/customers.dart';
import 'package:app/ui/providers/v1/orders/orders.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_with_customer.freezed.dart';

part 'order_with_customer.g.dart';

@freezed
class OrderWithCustomer with _$OrderWithCustomer {
  const factory OrderWithCustomer({
    required Order order,
    required Customer customer,
  }) = _OrderWithCustomer;
}

@riverpod
Future<List<OrderWithCustomer>> ordersWithCustomer(
    OrdersWithCustomerRef ref) async {
  final orders = ref.watch(ordersReadyProvider);
  final customers = ref.watch(customersReadyProvider);
  return orders.map((o) {
    final customer_ = customers.where((c) => c.id == o.customerId);
    if (o.customerId == 0 || customer_.isEmpty) {
      return OrderWithCustomer(order: o, customer: Customer.empty());
    }
    return OrderWithCustomer(order: o, customer: customer_.first);
  }).toList();
}
