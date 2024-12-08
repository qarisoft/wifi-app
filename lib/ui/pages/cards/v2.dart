import 'package:app/domain/models/v2/card/card.dart' as c;
import 'package:app/ui/pages/cards/create.dart';
import 'package:app/ui/pages/cards/edit.dart';
import 'package:app/ui/pages/components/boolean_icon.dart';
import 'package:app/ui/providers/v2/card/card.dart';
import 'package:app/ui/widgets/layout/index.dart';
import 'package:app/ui/widgets/loader.dart';
import 'package:flutter/cupertino.dart' show showCupertinoModalPopup;
import 'package:flutter/material.dart' show BuildContext, Text, Widget;
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CardsPageV2 extends HookConsumerWidget {
  const CardsPageV2({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return ref.watch(cardsProvider).when(
          data: (cards) {
            return LayoutCaller<c.Card>(
              data: cards,
              headers: const ['name', 'speed', 'price', 'bWidth', 'status'],
              id: (c.Card item) => item.id,
              body: (e) => [
                Text(e.name),
                Text('${e.speed}'),
                Text('${e.price}'),
                Text('${e.bandWidth}'),
                BooleanIcon(e.status)
              ],
              title: 'Cards',
              itemTitle: 'Card',
              editItem: editItem,
              create: create,
            );
          },
          error: (e, r) => const LoaderError(),
          loading: () => const Loader(),
        );
  }

  void create(context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return const CreateCard();
      },
    );
  }

  void editItem(context, c.Card data) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return EditCard(data);
      },
    );
  }
}
