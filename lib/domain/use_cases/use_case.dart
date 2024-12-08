import 'package:app/core/error/failure.dart';
import 'package:app/core/utils/types.dart';
// import 'package:app/core/utils/types.dart';
import 'package:dartz/dartz.dart';
export 'package:app/core/utils/types.dart';

abstract class UseCase<R extends AppFailure, T, E> {
  Future<Either<R, T>> call(E params);
}

abstract class AddDeleteEdit<T> {
  FOr< T> add(Map<String, dynamic> t);
  FOr< bool> delete(int id);
  FOr< T> edit(T t);
  FOr< T> create(T t);
  FOr< T> getById(int id);
  FOr< List<T>> getAll();
}

abstract class CreateDeleteUpdate<T, CD> {
  String get table;

  FOr< int > create(CD data);
  FOr< bool> delete(int id);
  FOr< bool> edit(Map<String, dynamic> t, int id);
  FOr< bool> update(CD t, int id);
  FOr< T> getById(int id);
  FOr< List<T>> getAll();
}
