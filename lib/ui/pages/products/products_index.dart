import 'package:app/ui/pages/templete.dart';
import 'package:app/ui/providers/v1/products/products.dart';
import 'package:app/ui/widgets/loading/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductsPage extends HookConsumerWidget {
  const ProductsPage({super.key});

  // final n = App.di<ProductsNotifier>();
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
            title: const Text('New Product'),
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
                        labelText: 'price',
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
    final products = ref.watch(productsProvider);
    final nameC = useTextEditingController();
    final priceC = useTextEditingController();
    return CustomPage(
        create: () => {
              create(context, nameC, priceC, () {
                LoadingScreen.instance().show(context: context);
                ref
                    .read(productsProvider.notifier)
                    .create(name: nameC.text, price: double.parse(priceC.text))
                    .then((_) {
                  LoadingScreen.instance().hide();
                  nameC.clear();
                  priceC.clear();
                });
              })
            },
        title: 'Product',
        children: [
          products.when(
            error: (error, stackTrace) => const Text('error'),
            loading: () => const CircularProgressIndicator(),
            data: (data) => DataTable(
              columns: const [
                DataColumn(label: Text('#')),
                DataColumn(label: Text('product')),
                DataColumn(label: Text('price')),
              ],
              rows: List.generate(
                data.length,
                (index) {
                  final e = data[index];
                  return DataRow(cells: [
                    DataCell(Text((index + 1).toString())),
                    DataCell(Text(e.name)),
                    DataCell(Text(e.price.toString())),
                  ]);
                },
              ),
            ),
          )
        ]);
  }
}
