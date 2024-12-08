import 'package:app/core/app.dart';
// import 'package:app/core/utils/types.dart';
// import 'package:app/core/error/failure.dart';
// import 'package:app/core/utils/types.dart';
// import 'package:app/data/use_cases/create_edit_delete.dart';
import 'package:app/domain/models/v2/user/user.dart';
import 'package:app/domain/service/storage.dart';
import 'package:app/domain/use_cases/v2/auth/auth.dart';
import 'package:app/ui/providers/v2/base.dart' show ProviderHelper;
import 'package:app/ui/providers/v2/ui/state.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth.g.dart';

@Riverpod(keepAlive: true)
class Auth extends _$Auth {
  GetIt get di => App.di;

  get register => _register;

  RegisterUseCase get rUC => di<RegisterUseCase>();

  CheckUserUC get checkUC => di<CheckUserUC>();

  LoginUseCase get lUseCase => di<LoginUseCase>();

  Storage get storage => di<Storage>();

  @override
  Future<AuthData> build() async {
    final s = storage.getUser();
    if (s != null) {
      final res = await lUseCase((password: s.loginPwd, username: s.userName));

      if (res.isRight()) {
        return AuthData.yes(user: s);
      }
    }
    return const AuthData.no();
  }

  // goTo([bool toLogin = true]) => state = AuthData.no(login: toLogin);

  login(UserData data) async {
    ref.start();
    final res =
        await lUseCase((password: data.loginPwd, username: data.userName));

    await res.fold(
      (l) async {
        ref.end(er: l);
      },
      (r) async {
        await storage.saveUser(r);
        ref.end(ms: const AppMsg.logInSuccessfully());
        ref.invalidateSelf();
      },
    );
  }

  _register(UserData data) async {
    ref.start();
    final u = await checkUC(data.userName);
    if (u.isRight()) {
      final a = await rUC((
        username: data.userName,
        password: data.loginPwd,
        name: data.name,
      ));
      a.fold((l) {
        ref.end(er: l);
      }, (r) {
        ref.end(ms: const AppMsg.registered());
      });
      return;
      // if(a.isRight()){
      //
      // }
    }
  }
// _register(UserData data) => ref.callFn(
//       () async {
//         final u = await checkUC(data.userName);
//         if (u.isRight()) {
//           return await rUC((
//             username: data.userName,
//             password: data.loginPwd,
//             name: data.name,
//           ));
//         }
//
//         return u;
//       },
//       ms: const AppMsg.registered(),
//     );
}
