import 'package:app/core/error/failure.dart';
import 'package:app/domain/index.dart';
import 'package:dartz/dartz.dart' show Either, Right, Left;

class FOrders extends OrderUseCase {
  static List<Order> orders = [
    const Order(customerId: 1, id: 1),
    const Order(customerId: 2, id: 2),
    const Order(customerId: 2, id: 3),
  ];

  @override
  Future<Either<AppFailure, Order>> add(Map<String, dynamic>? o) async {
    try {
      final Order order =
          Order(id: orders.length + 1, customerId: o?['customerId'] ?? 0);
      orders.add(order);
      return Right(order);
    } catch (e) {
      return const Left(AppFailure(0, 'msg'));
    }
  }

  @override
  Future<Either<AppFailure, bool>> delete(int id) async {
    orders = orders.where((o) => o.id != id).toList();
    return const Right(true);
  }

  @override
  Future<Either<AppFailure, Order>> edit(Order o) async {
    await Future.delayed(const Duration(milliseconds: 400));
    try {
      final _orders = orders.map((ord) {
        if (o.id == ord.id) {
          return o;
        }
        return ord;
      }).toList();
      orders = _orders;
      return Right(o);
    } catch (e) {
      return const Left(AppFailure(0, ''));
    }
  }

  @override
  Future<Either<AppFailure, List<Order>>> getAll() async {
    return Right(orders);
  }

  @override
  Future<Either<AppFailure, Order>> getById(int id) async {
    return Right(orders.firstWhere((o) => o.id == id));
  }

  @override
  Future<Either<AppFailure, Order>> create(Order t) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<AppFailure, List<OrderItem>>> items(int id) {
    // TODO: implement items
    throw UnimplementedError();
  }
}
