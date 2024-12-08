import 'package:app/domain/models/v2/card/card.dart' show CardData;
import 'package:app/ui/pages/auth/components/textfield.dart';
import 'package:app/ui/providers/index.dart'
    show cardsProvider, appUiProvider, WellDoneMsg;
import 'package:app/ui/share/ex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreateCard extends ConsumerWidget {
  const CreateCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return HookConsumer(
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
        final name = useTextEditingController();
        final code = useTextEditingController();
        final speed = useTextEditingController(text: '0');
        final bWidth = useTextEditingController(text: '0');
        final price = useTextEditingController(text: '0');
        return Dialog(
          // scrollable: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: <Widget>[
                      const Text('New Card'),
                      FormTextField(
                        controller: name,
                        hintText: 'name',
                      ),
                      FormTextField(
                        controller: code,
                        hintText: 'code',
                      ),
                      FormTextField(
                        controller: speed,
                        hintText: 'speed',
                        isNumber: true,
                      ),
                      FormTextField(
                        controller: bWidth,
                        hintText: 'bWidth',
                        isNumber: true,
                      ),
                      FormTextField(
                        controller: price,
                        hintText: 'price',
                        isNumber: true,
                        isCurency: true,
                      ),
                      ElevatedButton(
                          child: const Text("Submit"),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              // Navigator.of(context).pop();
                              final data = CardData(
                                price: price.text.toDoub(),
                                speed: speed.text.toInt(),
                                name: name.text,
                                code: code.text,
                                bandWidth: bWidth.text.toInt(),
                                status: true,
                              );
                              // PointOfSlsData(name: nc.text, phone: phc.text);
                              // print(data);

                              ref.read(cardsProvider.notifier).create(data);
                            }
                          })
                    ]
                        .map(
                          (wGt) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: wGt,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
          // actions: [

          // ],
        );
      },
    );
  }
}
