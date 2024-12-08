import 'package:app/core/error/failure.dart';
import 'package:app/core/utils/extensions.dart';
import 'package:app/data/service/db/sqlite.dart';
import 'package:app/domain/models/v2/year/year.dart';
import 'package:app/domain/use_cases/v2/years/year.dart';
import 'package:dartz/dartz.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class GetCurrentYear extends GetCurrentYearUseCase {
  final SqlService service;

  GetCurrentYear({required this.service});

  @override
  Future<Either<AppFailure, Year>> call(Null p) async {
    try {
      final response = await service.sql((db) => db.rawQuery('''
          SELECT *
          FROM years
          where is_current_year=1
          LIMIT 1;
        '''));
      if (response.isEmpty) {
        return Left(AppFailure.noCurrentYear());
      }
      final a = Year.fromJson(response.first.fromDb());
      return Right(a);
    } on DatabaseException catch (e) {
      return Left(
        AppFailure.db(e.toString()),
      );
    }
  }
}
