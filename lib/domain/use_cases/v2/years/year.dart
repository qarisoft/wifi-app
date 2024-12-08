import 'package:app/core/error/failure.dart';
import 'package:app/domain/models/v2/year/year.dart';
import 'package:app/domain/use_cases/use_case.dart';

abstract class GetCurrentYearUseCase extends UseCase<AppFailure, Year, Null> {}

abstract class YearsUseCase implements CreateDeleteUpdate<Year, YearData> {
  FOr<bool> open(int id);

  FOr<Year> current();
}
