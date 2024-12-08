// import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:flutter/material.dart';

class DataSource<T> extends DataTableSource {
  // final CreateDeleteUpdate<T, CD> Function()? useCase;
  List<T> data = [];
  List<String> keys;
  int get datacount {
    if (data.length < 10) {
      return data.length;
    }
    return 10;
  }

  Map<String, dynamic> Function(T t) toJson;
  DataRow Function(T t)? row;
  DataCell Function(MapEntry<String, dynamic> i, T t)? getCell;

  DataSource({required this.toJson, this.keys = const []});

  init(List<T> d, [DataRow Function(T t)? row_]) {
    data = d;
    if (row_!=null) {
      
      row=row_;
    }
    notifyListeners();
  }
  setKeys(List<String> ks) {
    keys = ks;
    notifyListeners();
  }

  setRow(DataRow Function(T t) r) {
    row = r;
    notifyListeners();
  }

  DataCell getCellData(MapEntry<String, dynamic> i) {
    return DataCell(
      Text(
        i.value.toString(),
      ),
    );
  }

  @override
  DataRow? getRow(int index) {
    final item = data[index];
    final row_ = row?.call(item);
    if (row_ != null) {
      return row_;
    }

    return DataRow(
      cells: keys.map(
        (i) {
          final v_ = toJson(item).entries.where(
                (element) => element.key == i,
              );
          MapEntry<String, dynamic> v;
          if (v_.isEmpty) {
            v = MapEntry(i, null);
          } else {
            v = v_.first;
          }
          final a = getCell?.call(v, item);

          return a ??
              DataCell(
                Text(v.value.toString()),
              );
        },
      ).toList(),
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => data.length;

  @override
  int get selectedRowCount => 0;
}
