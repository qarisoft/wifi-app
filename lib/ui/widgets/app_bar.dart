import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart'
    show HookConsumerWidget, WidgetRef;

import '../providers/index.dart' show appModeProvider;

class CustomAppBar extends HookConsumerWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.height = 50, this.title});

  final double height;
  final Widget? title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mode = ref.watch(appModeProvider);
    return AppBar(
      // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: title,
      

      actions: [
        Switch(
            value: mode == ThemeMode.dark,
            onChanged: (e) => ref.read(appModeProvider.notifier).togole())
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height + 5);
}
