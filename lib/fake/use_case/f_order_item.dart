import 'package:app/core/error/failure.dart';
import 'package:app/domain/index.dart';
import 'package:dartz/dartz.dart';

class FOrderItems extends OrderItemUseCase {
  List<OrderItem> orderItems = [
    OrderItem(id: 1, productId: 1, orderId: 1, quantity: 3, price: 200),
    OrderItem(id: 2, productId: 2, orderId: 2, quantity: 5, price: 200),
    OrderItem(id: 3, productId: 1, orderId: 1, quantity: 6, price: 200),
    OrderItem(id: 4, productId: 2, orderId: 3, quantity: 7, price: 200),
    OrderItem(id: 5, productId: 1, orderId: 1, quantity: 3, price: 200),
    OrderItem(id: 6, productId: 2, orderId: 1, quantity: 5, price: 200),
  ];

  @override
  Future<Either<AppFailure, OrderItem>> add(Map<String, dynamic> t) async {
    try {
      final OrderItem orderItem = OrderItem(
          id: orderItems.length + 1,
          orderId: t['orderId'],
          productId: t['productId'],
          quantity: t['quantity'],
          price: t['price']);
      orderItems.add(orderItem);
      return Right(orderItem);
    } catch (e) {
      return const Left(AppFailure(0, 'msg'));
    }
  }

  @override
  Future<Either<AppFailure, bool>> delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<AppFailure, OrderItem>> edit(OrderItem t) {
    // TODO: implement edit
    throw UnimplementedError();
  }

  @override
  Future<Either<AppFailure, List<OrderItem>>> getAll() async {
    return Right(orderItems);
  }

  @override
  Future<Either<AppFailure, OrderItem>> getById(int id) async {
    final a = orderItems.firstWhere((o) => o.id == id);
    return Right(a);
    // return orderItems.firstWhere((o)=>o.id==id)
  }

  @override
  Future<Either<AppFailure, OrderItem>> create(OrderItem t) async {
    final oItem = t.copyWith(id: orderItems.length + 1);
    orderItems.add(oItem);
    return Right(oItem);
  }
}
