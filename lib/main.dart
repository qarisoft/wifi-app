import 'dart:io';

import 'package:app/core/app.dart';
import 'package:app/ui/pages/setup.dart';
import 'package:app/ui/pages/ui.dart';
import 'package:app/ui/providers/index.dart';
import 'package:app/ui/providers/v2/years/current_year.dart';
import 'package:app/ui/share/theme.dart';
import 'package:app/ui/widgets/loader.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'ui/pages/auth/login/login.dart';

// ignore: depend_on_referenced_packages
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
  } else if (Platform.isLinux || Platform.isWindows) {
    sqfliteFfiInit();
    databaseFactoryOrNull = databaseFactoryFfi;
  }
  const p = 'd61.db';

  await App.init(path: p);

  runApp(const ProviderScope(child: UI()));
}

class UI extends HookConsumerWidget {
  const UI({super.key});

  static const AppTheme appTheme = AppTheme();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mode = ref.watch(appModeProvider);
    return MaterialApp(
      theme: AppTheme.l,
      darkTheme: AppTheme.d,
      themeMode: mode,
      debugShowCheckedModeBanner: false,
      home: const AppPage(),
    );
  }
}

class AppPage extends ConsumerWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(authProvider).when(
          data: (auth) => auth.when(
            yes: (_) => const _Page(),
            no: (_) => const LoginPage(),
          ),
          error: (e, _) => const LoaderError(),
          loading: () => const Loader(),
        );
  }
}

class _Page extends ConsumerWidget {
  const _Page();

  @override
  Widget build(BuildContext context, ref) {
    return ref.watch(currentYearProvider).when(
          data: (cy) {
            if (cy != null) {
              print(cy);
              return UiPage();
            }
            return const SetupPage();
            // UiPage() :
          },
          error: (e, s) => const LoaderError(),
          loading: () => const Loader(),
        );
  }
}
