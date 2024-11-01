import 'package:app/ui/pages/home/provider/provider.dart';
// import 'package:app/ui/providers/index.dart' show productsChargeProvider;
import 'package:app/ui/share/colors.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Home extends HookConsumerWidget {
  const Home({super.key, this.a});
  final String? a;
  @override
  Widget build(BuildContext context, ref) {
    final productsCharge = ref.watch(summeryProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.gray,
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            productsCharge.when(
                error: (error, stackTrace) => const Text('error'),
                loading: () => const CircularProgressIndicator(),
                data: (data) {
                  return DataTable(
                    // columnSpacing: 0,
                    columns: const [
                      DataColumn(label: Text('Card')),
                      DataColumn(label: Text('Avilable')),
                      DataColumn(label: Text('Soled')),
                      DataColumn(label: Text('Total')),
                    ],
                    rows: data.map(
                      (e) {
                        return DataRow(cells: [
                          DataCell(Text(e.item)),
                          DataCell(Text(e.avilable.toString())),
                          DataCell(Text(e.soled.toString())),
                          DataCell(Text(e.total.toString())),
                        ]);
                      },
                    ).toList(),
                  );
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        shape: CircleBorder(),
        onPressed: () {},
      ),
    );
  }
}
