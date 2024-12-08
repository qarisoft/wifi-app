import 'package:app/core/app.dart';
import 'package:app/domain/models/v2/year/year.dart';
import 'package:app/domain/use_cases/v2/years/year.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_year.g.dart';

@riverpod
class CurrentYear extends _$CurrentYear {
  YearsUseCase get useCase => App.di<YearsUseCase>();

  @override
  Future<Year?> build() => fetch();

  Future<Year?> fetch() async {
    final all = await useCase.getAll();
    // print(all);
    all.fold(
      (l) {
        // print(l.msg);
      },
      (r) {},
    );
    final res = await useCase.current();
    return res.fold((l) => null, (r) => r);
  }
}
