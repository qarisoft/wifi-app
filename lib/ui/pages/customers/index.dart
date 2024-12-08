import 'package:app/domain/models/v2/sales/point_of_sales/point_of_sales.dart';
import 'package:app/ui/pages/components/create_form.dart';
import 'package:app/ui/pages/customers/edit_customer.dart';
import 'package:app/ui/providers/index.dart' show appUiProvider, WellDoneMsg;
import 'package:app/ui/share/ex.dart';
import 'package:app/ui/widgets/layout/index.dart';
import 'package:app/ui/widgets/loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../auth/components/textfield.dart';
import './provider/provider.dart';

class CustomersPage extends HookConsumerWidget {
  const CustomersPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return ref.watch(customerProvider).when(
          data: (data) => LayoutCaller(
            title: 'Customers',
            itemTitle: 'Customer',
            data: data,
            id: (item) => item.id,
            editItem: editItem,
            create: create,
            headers: const ['name', 'phone', 'active'],
            body: (e) => [
              Text(e.name),
              Text(e.phone),
              const Center(child: Icon(Icons.check))
              // Text('${e.status}'),
            ],
          ),
          error: (e, r) => const LoaderError(),
          loading: () => const Loader(),
        );
  }

  void create(context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return const CreateCustomer();
      },
    );
  }

  void editItem(context, PointOfSale data) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return EditCustomer(data);
      },
    );
  }
}

class CreateCustomer extends HookConsumerWidget {
  const CreateCustomer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
        final nc = TextEditingController();
        final phc = TextEditingController();
        return CreateForm(
            action: () {
              final data = PointOfSlsData(name: nc.text, phone: phc.text);
              ref.read(customerProvider.notifier).create(data);
            },
            title: 'New Customer',
            children: [
              FormTextField(
                controller: nc,
                hintText: 'name',
              ),
              10.vSpace,
              FormTextField(
                controller: phc,
                hintText: 'phone',
              ),
            ]);
      },
    );
  }
}
