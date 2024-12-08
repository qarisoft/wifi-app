import 'package:dartz/dartz.dart';

extension MapNullCleaner on Map<String, dynamic> {
  Map<String, dynamic> get nonNulableMap {
    Map<String, dynamic> data = {};
    for (var element in entries.where((e) => e.value != null).toList()) {
      data[element.key] = element.value;
    }
    return data;
  }

  //  //
  Map<String, dynamic> fromDb() {
    Map<String, dynamic> data = {};

    for (var el in nonNulableMap.entries) {
      data[el.key] = el.key.startsWith('is_') ? el.value == 1 : el.value;
    }
    return data;
  }

  // saving //
  Map<String, dynamic> toDb() {
    Map<String, dynamic> data = {};
    for (var el in nonNulableMap.entries) {
      if (el.value.runtimeType == bool) {
        data[el.key] = el.value ? 1 : 0;
      } else {
        data[el.key] = el.value;
      }
    }
    return data;
  }
}

extension MapIterableCleaner<T> on Iterable<T?> {
  List<T> get safeMap => toList().whereType<T>().toList();
}

extension EitherValueExtractor<L, R> on Either<L, R> {
  R? get data => fold((l) => null, (r) => r);
  // R get rightList => fold((l) => [], (r) => r);
}

extension EitherListValueExtractor<L, R> on Either<L, List<R>> {
  List<R> get dataList => fold((l) => [], (r) => r);
}
