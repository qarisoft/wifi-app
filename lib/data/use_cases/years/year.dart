import 'package:app/core/error/failure.dart';
import 'package:app/core/utils/extensions.dart' show MapNullCleaner;
// import 'package:app/data/use_cases/cards/gen_cards.dart';
import 'package:app/domain/models/v2/year/year.dart';
import 'package:app/domain/use_cases/v2/years/year.dart';
import 'package:dartz/dartz.dart';

import '../create_edit_delete.dart';

class YearsUseCaseI extends CreateDeleteUpdateFactory<Year, YearData>
    implements YearsUseCase {
  YearsUseCaseI(
      {required super.service,
      super.table = 'years',
      super.toModelFunc = Year.fromJson});

  @override
  Future<Either<AppFailure, bool>> open(int id) => edit(
        {
          ...const YearData(status: true).toJson(),
          'is_current_year': true,
        }.toDb(),
        id,
      );

  @override
  FOr<Year> current() async {
    return await callThis(
      (db) async {
        final res = await db.query(
          table,
          where: 'is_current_year=?',
          whereArgs: [1],
          limit: 1,
        );
        if (res.isEmpty) {
          throw AppFailure.noCurrentYear();
        }
        final y = toModel(res.first);
        if (y == null) {
          throw AppFailure.noCurrentYear();
        }
        return y;
      },
    );
  }
}
