import 'package:app/ui/share/theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/v2/ui/index.dart';

class EditDeleteForm extends StatelessWidget {
  const EditDeleteForm({
    super.key,
    this.editAction,
    required this.children,
    required this.title,
    this.delAction,
  });

  final Function()? editAction;
  final Function()? delAction;
  final List<Widget> children;
  final String title;

  @override
  Widget build(BuildContext context) {
    return HookConsumer(
      builder: (context, ref, c) {
        ref.listen(
          appUiProvider.select((s) => s.message),
          (a, b) {
            if (b != null && b is WellDoneMsg) {
              Navigator.of(context).maybePop();
            }
          },
        );
        final formKey = GlobalKey<FormState>();

        return AlertDialog(
          // backgroundColor: AppTheme.g300,
          scrollable: true,
          title: Text(title),
          content: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: children,
            ),
          ),
          actions: [
            ElevatedButton(
              style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                    backgroundColor: Theme.of(context).colorScheme.error.wp,
                  ),
              onPressed: delAction != null
                  ? () {
                      // if (formKey.currentState!.validate()) {
                      delAction!();
                      // }
                    }
                  : null,
              child: const Text("Delete"),
            ),
            ElevatedButton(
              onPressed: editAction != null
                  ? () {
                      if (formKey.currentState!.validate()) {
                        editAction!();
                      }
                    }
                  : null,
              child: const Text("Save"),
            ),
          ],
        );
      },
    );
  }
}
