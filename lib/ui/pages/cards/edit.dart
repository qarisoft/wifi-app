import 'package:app/domain/models/index.dart' show Card;
import 'package:app/ui/pages/auth/components/textfield.dart';
import 'package:app/ui/pages/components/edit_delete_form.dart';
import 'package:app/ui/providers/v2/card/card.dart';
import 'package:app/ui/share/ex.dart';
import 'package:app/ui/widgets/labeled_row.dart';
import 'package:flutter/material.dart'
    show BuildContext, Placeholder, StatelessWidget, Switch, Widget;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../share/theme.dart';

class EditCard extends HookConsumerWidget {
  const EditCard(this.data, {super.key});

  final Card data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = useTextEditingController(text: data.name);
    final code = useTextEditingController(text: data.code);
    final bWidth = useTextEditingController(text: data.bandWidth.toString());
    final speed = useTextEditingController(text: data.speed.toString());
    final price = useTextEditingController(text: data.price.toString());
    final active = useState(data.status);
    final isFree = useState(data.isFree);
    final changeStatus = useCallback((bool? e) {
      if (e != null) {
        active.value = e;
      }
    }, [active]);
    final changeIsFree = useCallback((bool? e) {
      if (e != null) {
        isFree.value = e;
      }
    }, [isFree]);

    final newUser = useCallback(() {
      final a = data.copyWith(
          name: name.text,
          code: code.text,
          price: price.text.toDoub(),
          speed: speed.text.toInt(),
          bandWidth: bWidth.text.toInt(),
          status: active.value,
          isFree: isFree.value);
      // print(a);
      return a;
    }, [name, code, price, speed, bWidth, data, active, isFree]);
    return EditDeleteForm(
      editAction: () {
        final a = newUser();
        ref.read(cardsProvider.notifier).edit(a);
      },
      delAction: () {
        ref.read(cardsProvider.notifier).del(data.id);
      },
      title: 'edit card',
      children: [
        FormTextField(
          controller: name,
          hintText: 'name',
        ),
        FormTextField(
          controller: code,
          hintText: 'code',
        ),
        MRow(
          label: 'Free',
          child: Switch(
            onChanged: changeIsFree,
            value: isFree.value,
            inactiveTrackColor: AppTheme.g300,
            activeTrackColor: AppTheme.blu400,
            activeColor: AppTheme.g300,
          ),
        ),
        if (!isFree.value)
          FormTextField(
            isNumber: true,
            hintText: 'price',
            controller: price,
          ),
        FormTextField(
          isNumber: true,
          hintText: 'speed',
          controller: speed,
        ),
        FormTextField(
          isNumber: true,
          hintText: 'band width',
          controller: bWidth,
        ),
        MRow(
          label: 'Status',
          child: Switch(
            onChanged: changeStatus,
            value: active.value,
            inactiveTrackColor: AppTheme.g300,
            activeTrackColor: AppTheme.blu400,
            activeColor: AppTheme.g300,

            // trackColor: AppTheme.g300.wp,
          ),
        )
      ].pad(),
    );
  }
}

class FormSwitch extends StatelessWidget {
  const FormSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
