import 'package:app/core/app.dart';
import 'package:app/ui/providers/index.dart';
import 'package:app/ui/providers/v1/order_item/order_item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:app/domain/index.dart';

part 'orders.g.dart';

@Riverpod(keepAlive: true)
class Orders extends _$Orders {
  final OrderUseCase useCase = App.di<OrderUseCase>();

  Future<List<Order>> fetch() async {
    return (await useCase.getAll()).fold((l) => [], (r) => r);
  }

  Future<void> updateState() async {
    final data = await fetch();
    state = AsyncData(data);
  }

  @override
  FutureOr<List<Order>> build() async {
    return fetch();
  }

  Future<void> delete(int id) async {
    await Future.delayed(const Duration(seconds: 2));
    await useCase.delete(id);
    await updateState();
    return;
  }

  Future<void> updateOrder(int id, {double? price, int? cId, bool? isD}) async {
    final s = state.value;
    if (s != null) {
      final order_ = s.where((o) => o.id == id);
      if (order_.isNotEmpty) {
        final order = order_.first;
        if (!order.isDelivered) {
          await useCase.edit(
            order.copyWith(
                isDelivered: isD ?? order.isDelivered,
                totalPrice: price ?? order.totalPrice,
                customerId: cId ?? order.customerId),
          );
          await updateState();
        }
      }
    }
    return;
  }

  Future<int> create() async {
    final id = (await useCase.add({})).fold((l) => 0, (r) => r.id);
    final s = await fetch();
    state = AsyncData(s);
    return id;
  }

  Future<void> setIsDelivered(int orderId, [bool e = true]) async {
    final s = state.value;
    if (s != null) {
      final order_ = s.where((o) => o.id == orderId);
      if (order_.isNotEmpty) {
        await useCase.edit(order_.first.copyWith(isDelivered: e));
        await updateState();
      }
    }
  }

  Future<void> deliverOrder(int orderId) async {
    // final a = ref.read(orderItemsReadyProvider).where(test);
    final s = state.value;
    if (s != null) {
      final order_ = s.where((o) => o.id == orderId);
      if (order_.isNotEmpty) {
        await useCase.edit(order_.first.copyWith(isDelivered: true));
        await updateState();
      }
    }
  }
}

@Riverpod(dependencies: [Orders])
List<Order> ordersReady(OrdersReadyRef ref) {
  return ref.watch(ordersProvider).value ?? [];
}
