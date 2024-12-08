import 'package:app/domain/models/index.dart';
import 'package:app/ui/pages/components/create_form.dart';
import 'package:app/ui/pages/customers/provider/provider.dart';
import 'package:app/ui/pages/orders_/provider/provider.dart';
import 'package:app/ui/share/ex.dart';
import 'package:app/ui/widgets/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../auth/components/textfield.dart';

class EditOrderHdr extends HookConsumerWidget {
  const EditOrderHdr(this.header, {super.key});
  final SalesOrderHeader header;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statement = useTextEditingController(text: header.statement);
    final pointSelection = useTextEditingController();
    final pointOfSaleId = useState(header.salePointId);
    final create = useCallback(
        () => {
              ref.read(orderHdrProvider.notifier).edit(
                    header.copyWith(
                      salePointId: pointOfSaleId.value,
                      statement: statement.text,
                      status: true,
                    ),
                  )
            },
        [pointOfSaleId, statement]);
    return CreateForm(
        action: create,
        title: 'Edit Order ${header.id}',
        children: [
          FormTextField(
            controller: statement,
            hintText: 'statement',
            validator: (e) => null,
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
                        initialSelection: pointOfSaleId.value,
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
