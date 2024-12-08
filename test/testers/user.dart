import 'package:app/data/use_cases/auth/login.dart';
import 'package:app/data/use_cases/auth/register.dart';
import 'package:app/domain/use_cases/v2/auth/auth.dart';

import 'types.dart';

class USerTester extends Tester {
  final DateTime afterYear = DateTime.now().add(const Duration(days: 3665));

  final LoginUseCase loginUseCase;
  final RegisterUseCase registerUseCase;

  USerTester(super.service)
      : loginUseCase = LoginUseCaseI(sql: service),
        registerUseCase = RegisterUseCaseI(sqlService: service);

  Tst register() async {
    final res = await registerUseCase(
        (password: 'password', username: 'salah', name: 'salah'));
    return res.fold((l) => false, (r) => r == 1);
  }

  Tst login() async {
    final res = await loginUseCase((username: 'salah', password: 'password'));

    // print(res);
    // print('//');
    return res.fold((l) => false, (r) => r.userName == 'salah');
  }

  Tst loginFail() async {
    final res = await loginUseCase((username: 'salah', password: 'password0'));
    return res.fold((l) => false, (r) => r.userName == 'salah');
  }
}
