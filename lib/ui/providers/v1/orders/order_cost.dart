// import 'package:app/ui/providers/order_item/order_order_items.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
//
// import '../../../domain/models/product.dart';
// import '../products/product_ready.dart'
//     show productsReadyProvider, productsReady;
// import '../order_item/order_items_ready.dart'
//     show orderItemsReady, orderItemsReadyProvider;
//
// part 'order_cost.g.dart';
//
// @Riverpod(dependencies: [orderOrderItems, productsReady])
// double orderCost(OrderCostRef ref, int orderId) {
//   double a = 0;
//   final orderItems = ref.watch(orderOrderItemsProvider(orderId));
//   final products = ref.watch(productsReadyProvider);
//   // final o_ = orderItems.map((orderItem) {
//   //   final c = products.where((p) => p.id == orderItem.productId).first;
//   //   return orderItem.copyWith(price: c.price * orderItem.quantity);
//   // }).toList();
//   // if (products.isNotEmpty) {
//   //   a = products.length.toDouble();
//   // }
//   // if (o_.length == 1) {
//   //   a = o_.first.price;
//   // }
//   // if (o_.length > 1) {
//   //   a = o_.map((o) => o.price).reduce((a, b) {
//   //     return a + b;
//   //   });
//   // }
//   return a;
// }
