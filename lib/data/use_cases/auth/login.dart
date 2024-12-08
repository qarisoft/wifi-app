// import 'dart:developer';

import 'package:app/core/error/failure.dart';
import 'package:app/core/utils/extensions.dart';
import 'package:app/data/service/db/sqlite.dart';
import 'package:app/data/use_cases/types.dart';
import 'package:app/domain/models/v2/user/user.dart';
import 'package:app/domain/use_cases/v2/auth/auth.dart';
import 'package:dartz/dartz.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class LoginUseCaseI extends LoginUseCase {
  final SqlService sql;

  LoginUseCaseI({required this.sql});

  @override
  Future<Either<AuthFailure, User>> call(
      ({String password, String username}) params) async {
    try {
      final User? response = await sql.sql((Database db) async {
        final Query res = await db
            .query('users', where: 'username=?', whereArgs: [params.username]);
        if (res.isNotEmpty) {
          final usrResponse = UserRes.fromJson(res.first.fromDb());
          if (usrResponse.id != null &&
              usrResponse.userName != null &&
              usrResponse.loginPwd != null) {
            if (params.password == usrResponse.loginPwd) {
              await db.insert('logins', {'user_id': usrResponse.id});
              return User.fromJson(usrResponse.toJson());
            }
            throw 'email or password incorrect';
          }
        }
        return null;
      });
      if (response != null) {
        return Right(response);
      }
      return Left(
          AuthFailure(response?.toJson().toString() ?? 'response null'));
    } catch (e) {
      return Left(AuthFailure(e.toString()));
    }
  }
}
// SqfliteFfiException
