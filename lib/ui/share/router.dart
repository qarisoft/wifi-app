import 'package:app/ui/pages/auth/login/login.dart';
import 'package:app/ui/pages/auth/register/register.dart';
import 'package:app/ui/pages/setup.dart';
import 'package:app/ui/pages/ui.dart';
import 'package:flutter/material.dart';

extension A on BuildContext {
  goTo(route) => Navigator.of(this).push(route);
  back()=>Navigator.of(this).maybePop();
  loginPage() => goTo(MaterialPageRoute(builder: (c) => const LoginPage()));
  registerPage() =>
      goTo(MaterialPageRoute(builder: (c) => const RegisterPage()));
  homePage() => goTo(MaterialPageRoute(builder: (c) => UiPage()));
  setupPage() => goTo(MaterialPageRoute(builder: (c) => const SetupPage()));
}
