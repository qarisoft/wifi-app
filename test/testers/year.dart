import 'package:app/data/use_cases/years/current_year.dart';
import 'package:app/data/use_cases/years/year.dart';
import 'package:app/domain/models/v2/year/year.dart';
import 'package:app/domain/use_cases/v2/years/year.dart';

import 'types.dart';

class YearTester extends Tester {
  YearData get year => YearData(endDate: afterYear, status: true);

  final YearsUseCase useCase;
  final GetCurrentYearUseCase _currentYearUseCase;

  YearTester(super.service)
      : useCase = YearsUseCaseI(service: service),
        _currentYearUseCase = GetCurrentYear(service: service);

  Tst getCurrentYear() async {
    final res = await _currentYearUseCase(null);
    return res.fold((l) => false, (r) => r.isCurrent);
  }

  Tst getYears() async {
    final years = await useCase.getAll();
    return years.fold((l) => false, (r) => r.isEmpty);
  }

  Tst createYears() async {
    await useCase.create(year); //1
    await useCase.create(year); //2
    await useCase.create(year); //3
    await useCase.create(year); //4
    await useCase.create(year); //5
    await useCase.create(year); //6
    final years = await useCase.getAll();
    // return true;
    return years.fold((l) {
      print(l.msg);
      return false;
    }, (r) => r.isNotEmpty);
  }

  Tst openYears() async {
    await useCase.open(1);
    await useCase.open(3);
    await useCase.open(2);
    await useCase.open(5);
    return await getCurrentYear();
  }
}
