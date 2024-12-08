import 'package:app/domain/models/index.dart';
import 'package:app/ui/pages/components/create_form.dart';
import 'package:app/ui/pages/customers/provider/provider.dart';
import 'package:app/ui/pages/orders_/provider/provider.dart';
import 'package:app/ui/share/ex.dart';
import 'package:app/ui/widgets/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../auth/components/textfield.dart';

class CreateOrderHdr extends HookConsumerWidget {
  const CreateOrderHdr({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statement = useTextEditingController();
    final pointSelection = useTextEditingController();
    final creationDate = useTextEditingController(text: DateFormat.yMd().format(DateTime.now()).toString());
    final pointOfSaleId = useState(0);
    final create = useCallback(
        () => {
              ref.read(orderHdrProvider.notifier).create(
                    SlsOrdHdrData(
                      salePointId: pointOfSaleId.value,
                      statement: statement.text,
                      status: true,
                    ),
                  )
            },
        [pointOfSaleId, statement]);

    // final u = useCallback((int? id) {
    //   if (id != null) {
    //     pointOfSaleId.value = id;
    //   }
    // }, [pointOfSaleId]);
    return CreateForm(action: create, title: 'New Order', children: [
      FormTextField(
        controller: statement,
        hintText: 'statement',
        validator: (e) => null,
      ),
              10.vSpace,
      FormTextField(
        controller: creationDate,
        icon: InkWell(
          child: const Icon(Icons.watch_later),
          onTap: () async {
            final a = await showDatePicker(
              barrierDismissible: true,
              context: context,
              firstDate: DateTime.now(),
              lastDate: DateTime.parse('2030-01-01'),
              currentDate: DateTime.now()
            );
            if (a != null) {
              creationDate.text = DateFormat.yMd().format(a).toString();
              
            }
          },
        ),
        // onIconTap: ,
        hintText: 'date',
      ),
      10.vSpace,
      Consumer(
        builder: (context, ref, c) {
          return ref.watch(customerProvider).when(
                data: (points) {
                  return DropdownMenu(
                    controller: pointSelection,
                    width: 300,
                    label: Text(
                      'Customer',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    onSelected: (id) => pointOfSaleId.value = id ?? 0,
                    dropdownMenuEntries: points.map<DropdownMenuEntry<int>>(
                      (PointOfSale c) {
                        return DropdownMenuEntry<int>(
                          value: c.id,
                          label: c.name,
                        );
                      },
                    ).toList(),
                  );
                },
                error: (_, __) => const LoaderError(),
                loading: () => const Loader(),
              );
        },
      ),
      20.vSpace,
      // ElevatedButton(onPressed: () {}, child: Text('Create'))
    ]);
  }
}

// class CardDropdown extends StatelessWidget {
//   const CardDropdown({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
