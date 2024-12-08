import 'package:app/core/error/failure.dart';
import 'package:app/core/utils/extensions.dart';
import 'package:app/data/service/db/sqlite.dart';
// import 'package:app/data/use_cases/create_edit_delete.dart';
// import 'package:app/data/use_cases/cards/gen_cards.dart';
import 'package:app/data/use_cases/types.dart';
import 'package:dartz/dartz.dart';





class DbCaller<T> {
  final SqlService service;
  final String table;
  String getId() => 'id';
  get _id=>getId();
  String getWhere() => '$_id=?';

  T? toModel(MP map) => throw UnimplementedError();

  DbCaller({required this.service, required this.table});

  List<T> itemsFromDb(Query q) => q.map(toModel).safeMap;

  FAOr<DbFailure, R> callThis<R>(CallerType<R> action) async {
    try {
      //
      final res = await service.sql(action);
      //
      return Right(res);
      //
    } catch (e) {
      //
      return Left(
        DbFailure(e.toString()),
      );
    }
  }
}
