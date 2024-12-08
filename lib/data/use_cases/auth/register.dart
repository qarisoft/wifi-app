import 'package:app/core/error/failure.dart';
import 'package:app/core/utils/extensions.dart';
import 'package:app/data/service/db/sqlite.dart';
import 'package:app/domain/models/v2/user/user.dart';
import 'package:app/domain/use_cases/v2/auth/auth.dart';
import 'package:dartz/dartz.dart';
// import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class RegisterUseCaseI extends RegisterUseCase {
  final SqlService sqlService;

  RegisterUseCaseI({required this.sqlService});

  @override
  Future<Either<AuthFailure, int>> call(RegisterParams params) async {
    try {
      final u = UserData(
          userName: params.username, loginPwd: params.password, status: true);
      final int res = await sqlService.sql(
        (db) async => await db.insert(
          'users',
          {...u.toJson().toDb(),'is_active':1},
        ),
      );
      return Right(res);
    } catch (e) {
      return Left(AuthFailure(e.toString()));
    }
  }
}
