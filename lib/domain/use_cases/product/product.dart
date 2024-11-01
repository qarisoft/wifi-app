import 'package:app/core/error/failure.dart';
import 'package:app/domain/models/v1/product.dart';
import 'package:app/domain/use_cases/use_case.dart';
import 'package:dartz/dartz.dart';

class ProductCharges {
  final Product product;
  final int in_;
  final int out;
  final int rest;
  ProductCharges(
      {required this.product,
      required this.in_,
      required this.out,
      required this.rest});
}

abstract class ProductUseCase implements AddDeleteEdit<Product> {
  Future<Either<AppFailure, ProductCharges>> chargeById(int id);
  Future<Either<AppFailure, List<ProductCharges>>> all();
}
