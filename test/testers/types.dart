import 'package:app/core/error/failure.dart';
import 'package:app/data/service/db/sqlite.dart';
import 'package:dartz/dartz.dart';

typedef Tst = Future<bool>;

extension ValueExtracter<T extends AppFailure, E> on Either<T, E> {
  bool call(bool Function(E param) a) => fold((l) {
        print(l.msg);
        return false;
      }, (r) => a(r));

  res() => fold((l) => l, (r) => r);

  resMsg() => fold((l) => l.msg, (r) => r);

  E? r() => fold((l) => null, (r) => r);
}

class Tester {
  final DateTime afterYear = DateTime.now().add(const Duration(days: 3665));

  final SqlService service;

  // final USerTester user;
  // final GenCardsTester gnCardsTester;
  Tester(this.service);
}
