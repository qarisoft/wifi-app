import 'package:flutter/material.dart';

abstract class BaseDataSource<T> extends DataTableSource {
  BaseDataSource(this.data);

  final List<T> data;

  Set<int> selected = {};
  int _selectedCount = 0;

  addSelected(int val) {
    selected.add(val);
    _selectedCount = selected.length;
    notifyListeners();
  }

  removeSelected(int id) {
    selected.remove(id);
    _selectedCount = selected.length;
    notifyListeners();
  }

  // @override
  // DataRow? getRow(int index) {
  //   assert(index >= 0);
  //   if (index >= data.length) return null;
  //   final product = data.where((p) => p.id == index).first;
  //   // return DataRow(cells: )
  //   return DataRow.byIndex(
  //     index: index,
  //     selected: selected.contains(product.id),
  //     onSelectChanged: (value) {
  //       if (value != null) {
  //         if (value) {
  //           _addSelected(product.id);
  //         } else {
  //           if (selected.contains(product.id)) {
  //             _removeSelected(product.id);
  //           }
  //         }
  //       }
  //     },
  //     cells: [
  //       DataCell(Text(product.name)),
  //       DataCell(Text('${product.price}')),
  //     ],
  //   );
  // }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => data.length;

  @override
  int get selectedRowCount => _selectedCount;
}
