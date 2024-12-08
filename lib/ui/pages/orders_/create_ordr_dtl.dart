// import 'package:app/domain/create.dart' show SlsOrdDtlData;
import 'package:app/domain/models/v2/sales/sales_order/sales_detail/sales_detail.dart';
import 'package:app/ui/pages/auth/components/textfield.dart';
import 'package:app/ui/pages/orders_/provider/order_dtls.dart';
import 'package:app/ui/share/ex.dart';
import 'package:app/ui/widgets/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../../widgets/labeled_row.dart';
// import '../orders_/provider/order_dtls.dart';
import '../../providers/v2/card/card.dart';
import '../components/create_form.dart';

class CreateOrderDtl extends HookConsumerWidget {
  const CreateOrderDtl(this.hdrId, {super.key});

  final int hdrId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cardIdController = useTextEditingController();
    final qty = useTextEditingController(text: '1');
    final cardId = useState<int>(0);
    // final qty = useState<int>(1);
    return CreateForm(
      action: cardId.value == 0
          ? null
          : () {
              final a = SlsOrdDtlData(
                hdrId: hdrId,
                cardId: cardId.value,
                outQty: qty.text.toInt(),
              );
              ref.read(orderDtlsProvider.notifier).create(a);
            },
      title: 'new Order Item',
      children: [
        Consumer(
          builder: (context, ref, c) {
            final cards = ref.watch(cardsProvider);
            // if (cards is List) {
            return cards.when(
                data: (data) => DropdownMenu<int>(
                      label: const Text('card'),
                      controller: cardIdController,
                      onSelected: (id) {
                        if (id != null) cardId.value = id;
                      },
                      inputDecorationTheme:
                          Theme.of(context).inputDecorationTheme,
                      width: 250,
                      dropdownMenuEntries: cards.value!
                          .map(
                            (c) =>
                                DropdownMenuEntry(label: c.name, value: c.id),
                          )
                          .toList(),
                    ),
                error: (e, _) => const LoaderError(),
                loading: () => const Loader());
            // }
            // return const Loader();
          },
        ),
        if(cardId.value!=0)
        FormTextField(
          hintText: 'Quantity',
          isNumber: true,
          controller: qty,
        )
      ].pad(),
    );
  }
}
