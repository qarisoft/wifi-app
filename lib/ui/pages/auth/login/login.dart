import 'package:app/domain/models/v2/user/user.dart';
import 'package:app/ui/providers/index.dart' show authProvider;
import 'package:app/ui/share/router.dart';
import 'package:app/ui/widgets/with_loading.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../components/form.dart';
import '../components/textfield.dart';

// snackBar(String msg) => SnackBar(
//       content: Text(msg),
//     );

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    // ref.listen(authProvider, )
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();
    return WithLoading(
      child: FormPage(
        action: () async {
          await ref.read(authProvider.notifier).login(
                UserData(
                  userName: usernameController.text,
                  loginPwd: passwordController.text,
                ),
              );
        },
        actionText: 'sign in',
        title: 'Welcome back you\'ve been missed!',
        actionText2: 'Register',
        action2: context.registerPage,
        children: <Widget>[
          FormTextField(
            controller: usernameController,
            hintText: 'Username',
            obscureText: false,
          ),
          const SizedBox(height: 10),
          FormTextField(
            controller: passwordController,
            hintText: 'Password',
            obscureText: true,
          ),
        ],
      ),
    );
  }
}
