
import 'package:app/domain/models/v2/operational_card/operational_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'provider/provider.dart';
class MyDataSource extends DataTableSource {
  List<OperationalCard> data = [];

  @override
  int get rowCount => data.length;

  init(List<OperationalCard> d) {
    data = d;
    notifyListeners();
  }

  @override
  DataRow? getRow(int index) {
    try {
      if (data.length >= index) {
        final d = data[index];

        return DataRow(cells: [
          DataCell(Text(d.id.toString())),
          DataCell(Text(d.cardId.toString())),
          DataCell(Text(d.inQty.toString())),
          DataCell(Text(d.outQty.toString())),
          DataCell(Text(d.isGenerated.toString())),
          DataCell(Text(d.isRejected.toString())),
          DataCell(Text(d.isValid.toString())),
          DataCell(Text(d.isOutDated.toString())),
          DataCell(Text(d.isFree.toString())),
          DataCell(Text(d.description.toString())),
          DataCell(Text(d.cardPrice.toString())),
          DataCell(Text(d.yearId.toString())),
          DataCell(Text(d.createdAt.toString())),
          DataCell(Text(d.sourceId.toString())),
          DataCell(Text(d.sourceTable.toString())),
        ]);
      }
      return null;
    } catch (e) {}
    return null;
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}

final source = MyDataSource();

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, c) {
        ref.watch(homeDetailsProvider).when(
            data: (d) {
              source.init(d);
            },
            error: (r, s) {},
            loading: () {});
        // source.init();

        return PaginatedDataTable(
          columns: const <DataColumn>[
            DataColumn(label: Text('id')),
            DataColumn(label: Text('card id')),
            DataColumn(label: Text('in')),
            DataColumn(label: Text('out')),
            DataColumn(label: Text('isGenerated')),
            DataColumn(label: Text('isRejected')),
            DataColumn(label: Text('isValid')),
            DataColumn(label: Text('isOutDated')),
            DataColumn(label: Text('isFree')),

            DataColumn(label: Text('description')),
            DataColumn(label: Text('cardPrice')),
            DataColumn(label: Text('yearId')),
            DataColumn(label: Text('createdAt')),
            DataColumn(label: Text('sourceId')),
            DataColumn(label: Text('sourceTable')),
            // DataColumn(label: Text('out')),
          ],
          source: source,
        );
      },
    );
  }
}
