import 'package:app/domain/models/v2/year/year.dart';
import 'package:app/ui/pages/auth/components/textfield.dart';
import 'package:app/ui/providers/v2/years/year.dart';
import 'package:app/ui/share/ex.dart';
import 'package:app/ui/widgets/with_loading.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SetupPage extends ConsumerWidget {
  const SetupPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fKey = GlobalKey<FormState>();

    return SafeArea(
      child: WithLoading(
        child: Scaffold(
          body: Center(
            child: HookConsumer(
              builder: (context, ref, child) {
                final startDate =
                    useTextEditingController(text: DateTime.now().toString());
                final endDate = useTextEditingController();
                final nameC = useTextEditingController();
                // final a = YearData()
                return Padding(
                  padding: const EdgeInsets.all(25),
                  child: Form(
                    key: fKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Setup',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        50.vSpace,
                        FormTextField(
                          controller: nameC,
                          hintText: 'yeaar name',
                        ),
                        10.vSpace,
                        FormTextField(
                          controller: startDate,
                          icon: const Icon(Icons.watch_later),
                          enabled: false,
                          hintText: 'start day Today',
                        ),
                        10.vSpace,
                        FormTextField(
                          controller: endDate,
                          icon: InkWell(
                            child: const Icon(Icons.watch_later),
                            onTap: () async {
                              final a = await showDatePicker(
                                barrierDismissible: true,
                                context: context,
                                firstDate: DateTime.now(),
                                lastDate: DateTime.parse('2030-01-01'),
                              );
                              if (a != null) {
                                endDate.text = a.toString();
                              }
                            },
                          ),
                          // onIconTap: ,
                          hintText: 'end day',
                        ),
                        20.vSpace,
                        ElevatedButton(
                          onPressed: () {
                            if (fKey.currentState!.validate()) {
                              ref.read(yearsProvider.notifier).open(YearData(
                                    endDate: DateTime.parse(endDate.text),
                                  ));
                            }
                          },
                          child: const Text('done'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
