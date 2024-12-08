import 'package:app/domain/models/v2/sales/point_of_sales/point_of_sales.dart';
import 'package:app/ui/pages/auth/components/textfield.dart';
import 'package:app/ui/pages/components/edit_delete_form.dart';
import 'package:app/ui/pages/customers/provider/provider.dart';
import 'package:app/ui/share/ex.dart';
import 'package:app/ui/widgets/labeled_row.dart';
import 'package:flutter/material.dart'
    show
        AlertDialog,
        BuildContext,
        Checkbox,
        Navigator,
        Text,
        TextButton,
        Widget,
        showDialog;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:input_quantity/input_quantity.dart';

import '../components/confirm.dart';

class EditCustomer extends HookConsumerWidget {
  const EditCustomer(this.data, {super.key});

  final PointOfSale data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = useTextEditingController(text: data.name);

    final phone = useTextEditingController(text: data.phone);
    final location = useTextEditingController(text: data.location);
    final description = useTextEditingController(text: data.description);
    final status = useState<bool>(data.status);
    final periorty = useState<int>(data.periorty ?? 0);

    return EditDeleteForm(
      editAction: () {
        // final a = newUser();

        ref.read(customerProvider.notifier).edit(
              data.copyWith(
                name: name.text,
                phone: phone.text,
                location: location.text,
                periorty: periorty.value,
                status: status.value,
                description: description.text,
              ),
            );
      },
      delAction: () {
        confirm(
          context: context,
          actionText: 'delete',
          titleText: 'delete item',
          action: () {
            ref.read(customerProvider.notifier).del(data.id);
          },
        );
      },
      title: 'edit customer',
      children: [
        FormTextField(
          controller: name,
          hintText: 'name',
        ),
        FormTextField(
          controller: phone,
          hintText: 'phone',
        ),
        FormTextField(
          controller: description,
          hintText: 'description',
        ),
        FormTextField(
          controller: location,
          hintText: 'location',
        ),
        MRow(
          label: 'status',
          child: Checkbox(
            value: status.value,
            onChanged: (e) => e != null ? status.value = e : null,
          ),
        ),
        MRow(
          label: 'periorty',
          child: InputQty.int(
            initVal: periorty.value,
            // decoration: decoration@,
            onQtyChanged: (v) => periorty.value = v,
          ),
        ),
      ].pad(),
    );
  }
}
