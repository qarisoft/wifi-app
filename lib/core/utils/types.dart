import 'package:app/core/error/failure.dart';
import 'package:dartz/dartz.dart';

typedef FOr<T> = Future<Either<AppFailure, T>>;
typedef FAOr<F, T> = Future<Either<F, T>>;

typedef RTp<T> = Either<AppFailure, T>;
