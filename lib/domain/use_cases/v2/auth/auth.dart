import 'package:app/core/error/failure.dart';
import 'package:app/domain/models/v2/user/user.dart';
import 'package:app/domain/use_cases/use_case.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

typedef LoginParams = ({String username, String password});
typedef RegisterParams = ({String username, String password, String? name});

abstract class AuthUseCase<T, E> extends UseCase<AuthFailure, T, E> {}

abstract class BaseUseCase<T, E> extends UseCase<AppFailure, T, E> {}

abstract class LoginUseCase extends AuthUseCase<User, LoginParams> {}

abstract class RegisterUseCase extends AuthUseCase<int, RegisterParams> {}

abstract class CheckUserUC extends UseCase<AppFailure,bool, String> {}
