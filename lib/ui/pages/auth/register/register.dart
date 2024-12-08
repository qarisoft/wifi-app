import 'package:app/core/error/failure.dart';
import 'package:app/domain/models/v2/user/user.dart';
import 'package:app/ui/providers/index.dart' show authProvider, appUiProvider;
import 'package:app/ui/providers/v2/ui/state.dart';
import 'package:app/ui/share/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../components/form.dart';
import '../components/textfield.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  static GlobalKey k = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return HookConsumer(
      builder: (context, ref, child) {
        final nameCtr = useTextEditingController(text: 'p');
        final usernameCtr = useTextEditingController(text: 'p');
        final phoneCtr = useTextEditingController(text: 'p');
        final passwordCtr = useTextEditingController(text: 'p');
        final passwordCtr2 = useTextEditingController(text: 'p');

        final usernameError = useState<String?>(null);
        ref.listen(
          appUiProvider.select((s) => s.error),
          (a, b) {
            if (b != null && b is UserNameNotValid) {
              usernameError.value = b.msg;
            }
          },
        );
        ref.listen(
          appUiProvider.select((s) => s.message),
          (a, b) {
            if (b != null && b is UserCreated) {
              context.back();
            }
          },
        );
        // nameCtr.

        return FormPage(
            action: () {
              ref.read(authProvider.notifier).register(
                    UserData(
                      userName: usernameCtr.text,
                      loginPwd: passwordCtr2.text,
                      name: nameCtr.text,
                    ),
                  );
            },
            actionText: 'register',
            action2: context.back,
            title: 'Welcome back you\'ve been missed!',
            actionText2: 'login',
            children: <Widget>[
              FormTextField(
                controller: nameCtr,
                hintText: 'Name',
                obscureText: false,
              ),
              const SizedBox(height: 10),
              FormTextField(
                controller: phoneCtr,
                hintText: 'Phone',
                obscureText: false,
              ),
              const SizedBox(height: 10),
              FormTextField(
                controller: usernameCtr,
                hintText: 'Username',
                obscureText: false,
                forceErrorText: usernameError.value,
                onChange: (s) => usernameError.value = null,

                // key: ,
              ),

              const SizedBox(height: 10),

              // password textfield
              FormTextField(
                controller: passwordCtr,
                hintText: 'Password',
                obscureText: true,
                validator: (v) =>
                    passwordCtr2.value.text != v ? 'passwords not equal' : null,
              ),
              const SizedBox(height: 10),
              FormTextField(
                controller: passwordCtr2,
                hintText: 'Password confirmation',
                validator: (v) =>
                    passwordCtr.value.text != v ? 'passwords not equal' : null,
                obscureText: true,
              ),
            ]);
      },
    );
  }
}
