// import 'package:app/domain/index.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
//
// import '../products/product_ready.dart';
// // import 'order_items_ready.dart';
//
// part 'order_item_cost.g.dart';
//
// @Riverpod(dependencies: [productsReady])
// Future<double> itemCost(ItemCostRef ref, OrderItem orderItem) async {
//   final products = ref.watch(productsReadyProvider);
//   final Product product =
//       products.where((p) => p.id == orderItem.productId).first;
//   return product.price * orderItem.quantity;
// }
