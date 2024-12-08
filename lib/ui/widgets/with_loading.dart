import 'package:app/ui/providers/index.dart';
// import 'package:app/ui/providers/v2/ui/state.dart';
// import 'package:app/ui/providers/v2/ui/ui.dart';
import 'package:app/ui/widgets/loading/loading.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
errorSnackBar(String msg) => SnackBar(
      content: Text(msg),
      duration: const Duration(seconds: 10),
      showCloseIcon: true,
    );

snackBar(String msg) => SnackBar(
      content: Text(msg),
    );

class WithLoading extends ConsumerWidget {
  // static WithLoading
  const WithLoading( {required this.child,super.key});
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      appUiProvider.select((s) => s.message),
      (a, b) {
        if (b != null) {
          ScaffoldMessenger.of(context).showSnackBar(snackBar(b.msg));
          // if (b is UserCreated) {
            // ref.read(authProvider.notifier).goTo();
          // }
        }
      },
    );
    ref.listen(
      appUiProvider.select((s) => s.error),
      (a, b) {
        if (b != null) {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog.adaptive(
                content: Text(b.msg),
              );
            },
          );
        }
      },
    );

    ref.listen(
      appUiProvider.select((s) => s.loading),
      (a, b) {
        if (!b) {
          LoadingScreen.instance().hide();
        }
        if (b) {
          LoadingScreen.instance().show(context: context);
        }
      },
    );
    return child;
  }
}
