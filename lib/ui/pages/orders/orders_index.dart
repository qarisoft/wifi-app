import 'package:app/domain/index.dart';
import 'package:app/ui/pages/orders/create.dart';
import 'package:app/ui/pages/templete.dart';
import 'package:app/ui/providers/v1/orders/order_with_customer.dart';
import 'package:app/ui/providers/v1/products/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/index.dart' show ordersProvider, orderWithPriceProvider;
// import '../../providers/orders/order_cost.dart';

class OrderItemObj {
  final int id;
  final Product product;
  final int quantity;
  final double price;

  OrderItemObj(
      {required this.id,
      required this.product,
      required this.quantity,
      required this.price});
}

class OrdersPage extends HookConsumerWidget {
  const OrdersPage({super.key});

  validator(value) {
    if (value == null || value.isEmpty) {
      return 'type some thing';
    }
    return null;
  }

  @override
  Widget build(BuildContext context, ref) {
    final orders = ref.watch(ordersWithCustomerProvider);
    final next = useCallback(
        (int oId) => {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CreateOrder(orderId: oId),
              ))
            },
        [context]);
    return CustomPage(
        title: 'Orders',
        create: () {
          ref.read(ordersProvider.notifier).create().then((oId) => next(oId));
        },
        children: [
          DataTable(
            columnSpacing: 0,
            columns: const [
              DataColumn(label: Text('#')),
              DataColumn(label: Text('Customer')),
              DataColumn(label: Text('price')),
              // DataColumn(label: Text('cost')),
              DataColumn(label: Text('')),
            ],
            rows: orders.when(
                data: (d) => d.map(
                      (e) {
                        // final cost = ref.watch(orderCostProvider(e.id));
                        return DataRow(cells: [
                          DataCell(Text(e.order.id.toString())),
                          DataCell(Text(e.customer.name)),
                          DataCell(Text(e.order.totalPrice.toString())),
                          // DataCell(OrderCostW(e.id)),
                          DataCell(const Text(''),
                              showEditIcon: true,
                              onTap: () => next(e.order.id)),
                        ]);
                      },
                    ).toList(),
                error: (e, r) => [],
                loading: () => []),
          ),
        ]);
  }
}

class OrderCostW extends HookConsumerWidget {
  const OrderCostW(this.orderId, {super.key});

  final int orderId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final cost = ref.watch(orderCostProvider(orderId));

    return Text('cost');
  }
}

// class OrderCostWidget extends HookConsumer {
//   const OrderCostWidget(this.orderId, {super.key, required super.builder});
//
//   final int orderId;
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final cost = ref.watch(orderCostProvider(orderId));
//     return Text(cost.toString());
//   }
// }
