import 'package:app/ui/pages/templete.dart';
import 'package:app/ui/providers/v1/customers/index.dart';
import 'package:app/ui/widgets/loading/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomersPage extends HookConsumerWidget {
  const CustomersPage({super.key});

  validator(value) {
    if (value == null || value.isEmpty) {
      return 'type some thing';
    }
    return null;
  }

  create(context, TextEditingController nameController,
      TextEditingController priceController, Function() action) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          final _formKey = GlobalKey<FormState>();
          return AlertDialog(
            scrollable: true,
            title: const Text('New Customer'),
            content: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Name',
                      ),
                      controller: nameController,
                      validator: (v) => validator(v),
                    ),
                    TextFormField(
                      validator: (v) => validator(v),
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'phone',
                      ),
                      controller: priceController,
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              ElevatedButton(
                  child: const Text("Submit"),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      action();
                      Navigator.of(context).pop();
                    }
                  })
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context, ref) {
    final customers = ref.watch(customersProvider);
    final nameController = useTextEditingController();
    final phoneController = useTextEditingController();
    return CustomPage(
        create: () => {
              create(context, nameController, phoneController, () {
                LoadingScreen.instance().show(context: context);
                ref
                    .read(customersProvider.notifier)
                    .create(
                        name: nameController.text, phone: phoneController.text)
                    .then((_) {
                  LoadingScreen.instance().hide();
                  nameController.clear();
                  phoneController.clear();
                });
              })
            },
        title: 'Customers',
        children: [
          customers.when(
            error: (error, stackTrace) => const Text('error'),
            loading: () => const CircularProgressIndicator(),
            data: (data) => DataTable(
              // columnSpacing: 0,
              columns: const [
                DataColumn(label: Text('#')),
                DataColumn(label: Text('name')),
                DataColumn(label: Text('phone')),
              ],
              rows: data.map(
                (e) {
                  return DataRow(cells: [
                    DataCell(Text(e.id.toString())),
                    DataCell(Text(e.name)),
                    DataCell(Text(e.phone)),
                  ]);
                },
              ).toList(),
            ),
          )
        ]);
  }
}
