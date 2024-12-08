// part 'failure.freezed.dart';

class Cod {
  static const unknown = 0;
  static const db = 1;
  static const auth = 2;
  static const inValidUsername = 3;
  static const usernameNotFound = 4;
  static const noSetUp = 5;
}

sealed class AppFailure {
  final String msg;
  final int code;

  const AppFailure({required this.msg, required this.code});

  const AppFailure.error([
    this.msg = 'unKnown error',
    this.code = Cod.unknown,
  ]);

  factory AppFailure.noCurrentYear() => const SetupFailure();

  factory AppFailure.db([String? msg]) => DbFailure(msg);

  factory AppFailure.login([String? msg]) => AuthFailure(msg);

  factory AppFailure.failRegister([String? msg]) => RegisterError();

  factory AppFailure.username([String? msg]) => UserNameNotValid();
}

class DbFailure extends AppFailure {
  const DbFailure([String? msg])
      : super.error(msg ?? 'user requested not founded', Cod.db);
}

class AuthFailure extends AppFailure {
  const AuthFailure([String? msg])
      : super.error(msg ?? 'user requested not founded', Cod.auth);
}

class RegisterError extends AppFailure {
  RegisterError({
    super.msg = 'username is not valid',
    super.code = Cod.inValidUsername,
  });
}

class UserNameNotValid extends AppFailure {
  UserNameNotValid({
    super.msg = 'username is not valid',
    super.code = Cod.inValidUsername,
  });
}

class SetupFailure extends AppFailure {
  const SetupFailure([String? msg])
      : super.error(
            msg ??
                'you need to set up the system first'
                    'try to create a year',
            Cod.noSetUp);
}
