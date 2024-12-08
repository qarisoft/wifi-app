import 'package:app/ui/providers/index.dart' show appUiProvider, WellDoneMsg;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app_bar.dart';

class Layout extends StatelessWidget {
  const Layout({
    super.key,
    this.action,
    required this.body,
    required this.title,
    this.floatingAction,
    this.createTitle,
    this.createFields,
    this.createAction,
  });

  final Function()? action;
  final Widget body;
  final Widget title;
  final Widget? floatingAction;
  final String? createTitle;
  final Widget? createFields;
  final Function()? createAction;

  void a() {}

  get _createAction => action ?? a;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: title,
      ),
      body: body,
      floatingActionButton: createFields != null
          ? Align(
              alignment: const Alignment(1.0, 0.89),
              child: FloatingActionButton(
                shape: const CircleBorder(),
                onPressed: () => create(context),
                child: const Icon(Icons.add),
              ),
            )
          : floatingAction,
    );
  }

  // Widget get  _createFields =>createFields!=null?createFields!:const SizedBox();
  void create(context) {
    showCupertinoModalPopup(
      // anchorPoint: ,
      context: context,
      builder: (context) {
        return Consumer(
          builder: (context, ref, child) {
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
              title: Text(createTitle ?? 'New '),
              content: Form(
                key: formKey,
                child: Container(child: createFields),
              ),
              actions: [
                ElevatedButton(
                    child: const Text("Submit"),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        // print(formKey.);
                        _createAction();
                      }
                    })
              ],
            );
          },
        );
      },
    );
  }
}
