import 'package:app/core/app.dart';
import 'package:app/domain/index.dart';

// show
//     $OrderItemCopyWith,
//     Customer,
//     CustomerUseCase,
//     Order,
//     OrderItem,
//     Product,
//     ProductUseCase;
import 'package:app/ui/providers/v1/customers/customers.dart';
import 'package:app/ui/providers/v1/products/products.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../order_item/order_item.dart';
import 'orders.dart';

part 'order_create.g.dart';

part 'order_create.freezed.dart';

@freezed
class OrderItemObj with _$OrderItemObj {
  const factory OrderItemObj({
    required OrderItem orderItem,
    required Product product,
  }) = _OrderItemObj;
}

@freezed
class OrderCreateState with _$OrderCreateState {
  const factory OrderCreateState(
      {required List<Customer> customers,
      required Order order,
      required List<Product> products,
      required List<OrderItemObj> items}) = _OrderCreateState;
}

@Riverpod(dependencies: [Orders, Customers, Products, OrderItems])
class OrderCreate extends _$OrderCreate {
  final ProductUseCase productUseCase = App.di<ProductUseCase>();
  final CustomerUseCase customerUseCase = App.di<CustomerUseCase>();

  @override
  FutureOr<OrderCreateState> build(int oId) async {
    final products_ = ref.watch(productsProvider).value ?? [];
    final customers_ = ref.watch(customersProvider).value ?? [];
    final orderItems = ref.watch(orderItemsProvider).value ?? [];
    final orders_ =
        ref.watch(ordersProvider).value ?? [].where((o) => o.id == oId);
    return OrderCreateState(
      customers: customers_,
      order: orders_.first,
      products: products_,
      items: orderItems
          .where((oItem) => oItem.orderId == oId)
          .map(
            (o) => OrderItemObj(
                orderItem: o,
                product: products_.where((p) => p.id == o.productId).first),
          )
          .toList(),
    );
  }
}
