// import 'package:app/domain/create.dart' show SalesOrderDtl;
import 'package:app/domain/models/v2/sales/sales_order/sales_detail/sales_detail.dart';
import 'package:app/ui/pages/auth/components/textfield.dart';
import 'package:app/ui/pages/components/edit_delete_form.dart';
import 'package:app/ui/providers/index.dart';
import 'package:app/ui/share/ex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'provider/order_dtls.dart';

class EditOrderDtl extends HookConsumerWidget {
  const EditOrderDtl(this.data, {super.key});

  final SalesOrderDtl data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final qty = TextEditingController(text: data.outQty.toString());
    final cardId = useState<int>(data.cardId);
    // final qty = useState<int>(data.outQty);
    return EditDeleteForm(
      editAction: cardId.value == 0
          ? null
          : () {
              final a =
                  data.copyWith(cardId: cardId.value, outQty: qty.text.toInt());
              ref.read(orderDtlsProvider.notifier).edit(a);
            },
      delAction: () {
        ref.read(orderDtlsProvider.notifier).del(data.id);
      },
      title: 'Order Item',
      children: [
        Consumer(
          builder: (context, ref, c) {
            final cards_ = ref.watch(cardsProvider).whenOrNull(data: (d) => d);
            final cards = cards_ ?? [];

            return DropdownMenu<int>(
              label: const Text('card'),
              initialSelection: cardId.value,
              inputDecorationTheme: Theme.of(context).inputDecorationTheme,
              width: 250,
              dropdownMenuEntries: cards
                  .map(
                    (c) => DropdownMenuEntry(
                        label: '${c.name} - ${c.price}', value: c.id),
                  )
                  .toList(),
            );
            // }
            // return const Loader();
          },
        ),
        FormTextField(
          hintText: 'Quantity',
          isNumber: true,
          controller: qty,
        )
        //
        // MRow(
        //   label: 'quantity',
        //   child: InputQty.int(
        //     initVal: qty.value,
        //     decoration: decoration,
        //     onQtyChanged: (v) => qty.value = v,
        //   ),
        // )
      ].pad(),
    );
  }
}
