import 'package:app/core/error/failure.dart';
import 'package:app/data/use_cases/db_caller.dart';
import 'package:app/domain/models/v2/user/user.dart';
import 'package:app/domain/use_cases/v2/auth/auth.dart';
import 'package:dartz/dartz.dart';

// extension A<L,R> on Either<L, R>{
//   resR(L lft)=>fold((l)=>Left(lft), (r)=>Right(r));
// }

class CheckUserNameExists extends DbCaller<User> implements CheckUserUC {
  CheckUserNameExists({required super.service, super.table = 'users'});

  @override
  Future<Either<AppFailure, bool>> call(String params) async {
    final res = await callThis(
      (db) async {
        final a_ = await db.query(
          table,
          where: 'username=?',
          whereArgs: [params],
        );

        return a_.isEmpty;
      },
    );
    return res.fold(
      (l) => Left(AppFailure.username()),
      (r) =>r? Right(r):Left(AppFailure.username()),
    );
  }
}
