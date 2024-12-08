import 'package:app/core/app.dart';
// import 'package:app/core/error/failure.dart';
// import 'package:app/core/error/failure.dart';
// import 'package:app/core/utils/extensions.dart' show EitherListValueExtractor;
// import 'package:app/core/utils/types.dart';
import 'package:app/domain/models/v2/year/year.dart' show Year, YearData;
// import 'package:app/domain/use_cases/use_case.dart';
import 'package:app/domain/use_cases/v2/years/year.dart';
// import 'package:app/ui/providers/create.dart';
import 'package:app/ui/providers/v2/base.dart';
import 'package:app/ui/providers/v2/years/current_year.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// import 'package:app/ui/providers/v2/base.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'year.g.dart';

// @riverpod
class Years extends ListR<Year, YearData> {
  @override
  YearsUseCase get useCase => App.di<YearsUseCase>();

  // open() async {}

  @override
  YearData fromModel(Year d) => YearData.fromJson(d.toJson());

  @override
  int getId(Year d) => d.id;

  // @override
  open(YearData data) async {
    final res = await useCase.create(data);
    if (res.isLeft()) {
      return dealWith(res);
    }
    final int? a = res.fold(
      (l) => null,
      (r) => r,
    );

    if (a != null && a > 0) {
      return await callFn(() => useCase.open(a), p: currentYearProvider);
    }
  }
// {

//   opened.fold(
//     (l) {
//       ref.end(er: l);
//     },
//     (r) {
//       ref.end(ms: const AppMsg.wellDone());
//       ref.invalidate(currentYearProvider);
//     },
//   );
// }
// }
}

final yearsProvider = AsyncNotifierProvider<Years, List<Year>>(Years.new);
