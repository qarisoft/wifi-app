import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/index.dart' show appUiProvider, WellDoneMsg;

class CreateForm extends StatelessWidget {
  const CreateForm({
    super.key,
    this.action,
    required this.children,
    required this.title,
  });

  final Function()? action;
  final List<Widget> children;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Consumer(
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
          scrollable: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(title)],
          ),
          // titlePadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          titleTextStyle: Theme.of(context).textTheme.bodyLarge,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          content: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: children,
            ),
          ),
          actions: [
            ElevatedButton(
                onPressed: action != null
                    ? () {
                        if (formKey.currentState!.validate()) {
                          action!();
                        }
                      }
                    : null,
                child: const Text("Submit"))
          ],
        );
      },
    );
  }
}
