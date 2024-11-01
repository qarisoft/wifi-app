import 'package:app/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<T> {
  Future<Either<AppFailure, T>> execute(dynamic);
}

abstract class AddDeleteEdit<T> {
  Future<Either<AppFailure, T>> add(Map<String, dynamic> t);

  Future<Either<AppFailure, bool>> delete(int id);

  Future<Either<AppFailure, T>> edit(T t);

  Future<Either<AppFailure, T>> create(T t);

  Future<Either<AppFailure, T>> getById(int id);

  Future<Either<AppFailure, List<T>>> getAll();
}
