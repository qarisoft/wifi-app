import 'package:app/core/error/failure.dart';
import 'package:app/core/utils/extensions.dart';
import 'package:app/data/use_cases/db_caller.dart' show DbCaller;
import 'package:app/data/use_cases/types.dart';
import 'package:app/domain/models/model.dart';
import 'package:app/domain/use_cases/use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
export './types.dart';



class CreateDeleteUpdateFactory<T, TD extends Model> extends DbCaller<T>
    implements CreateDeleteUpdate<T, TD> {
  //
  CreateDeleteUpdateFactory({
    required super.service,
    required super.table,
    required this.toModelFunc,
    this.toDBFunc,
  });
  // 


  String get _where=>getWhere();

  MP toDB(TD d, [Function(TD d)? toDBFunc]) {
    if (toDBFunc != null) {
      return toDBFunc(d);
    }
    return d.toJson().toDb();
  }

  final T? Function(MP m) toModelFunc;
  final MP Function(TD d)? toDBFunc;

  @override
  T? toModel(MP map) => toModelFunc(map.fromDb());

  @override
  Future<Either<AppFailure, int>> create(TD t) async => await callThis(
        (db) async => await db.insert(table, toDB(t, toDBFunc)),
      );

  @override
  Future<Either<AppFailure, bool>> delete(int id) async => await callThis(
        (db) async {
          //
          final count = await db.delete(table, where: _where, whereArgs: [id]);
          //
          return count == 1;
        },
      );

  @override
  Future<Either<AppFailure, bool>> edit(MP t, int id) async => await callThis(
        //
        (db) async {
          //
          final count = await db.update(
            table,
            t.nonNulableMap,
            where: _where,
            whereArgs: [id],
          );
          //
          return count == 1;
        },
      );

  @override
  Future<Either<AppFailure, List<T>>> getAll() async =>
      await callThis(_getItems);

  @override
  Future<Either<AppFailure, T>> getById(int id) async => callThis(
        (db) async {
          //
          final query = await db.query(table, where: _where, whereArgs: [id]);
          //
          if (query.isEmpty) {
            throw 'none found';
          }
          //
          final res = toModel(query.first);
          if (res == null) {
            throw 'none found';
          }
          return res;
        },
      );

  Future<List<T>> _getItems(Database db) async {
    //
    final dataList = await db.query(table);
    //
    return itemsFromDb(dataList);
  }
  

  @override
  FOr<bool> update(TD t, int id) async => await callThis(
        (db) async =>
            (await db.update(
              table,
              toDB(t),
              where: _where,
              whereArgs: [id],
            )) ==
            1,
      );
}


