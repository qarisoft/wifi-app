import 'package:app/domain/index.dart';

// import 'package:app/domain/models/order.dart';
import 'package:app/domain/use_cases/use_case.dart';
import 'package:dartz/dartz.dart' show Either;

import '../../../core/error/failure.dart';

abstract class OrderUseCase implements AddDeleteEdit<Order> {
  Future<Either<AppFailure, Order>> add(Map<String, dynamic>? t);

  Future<Either<AppFailure, List<OrderItem>>> items(int id);
}
