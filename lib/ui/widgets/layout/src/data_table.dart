// import 'package:app/domain/models/v2/card/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DataTableWidget<T> extends HookConsumerWidget {
  const DataTableWidget(
    this.data, {
    required this.id,
    required this.headers,
    required this.body,
    this.onEdit,
    this.onSelectionModChange,
    super.key,
    this.withNumbers = true,
  });

  final List<T> data;
  final int Function(T item) id;
  final List<String> headers;
  final List<Widget> Function(T item) body;
  final Function(T obj)? onEdit;
  final Function(bool b)? onSelectionModChange;
  final bool withNumbers;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectionMode = useState(false);

    //
    final selectedIds = useState<List<int>>([]);

    //
    final selected =
        useCallback((int id) => selectedIds.value.contains(id), [selectedIds]);

    //
    final selectItem = useCallback(
      (int id) => selectedIds.value = [...selectedIds.value, id],
      [selectedIds],
    );

    //
    final unSelectItem = useCallback(
      (int id) =>
          selectedIds.value = selectedIds.value.where((i) => i != id).toList(),
      [selectedIds],
    );

    //
    final changeSelected = useCallback((bool? ch, int id) {
      if (ch == null) return;
      ch ? selectItem(id) : unSelectItem(id);
    }, [selectItem, unSelectItem]);

    //
    final openSelection = useCallback(() {
      selectionMode.value = true;
      onSelectionModChange?.call(true);
    }, [selectionMode]);

    //
    final longPres = useCallback((int id) {
      if (selectionMode.value) return;
      openSelection();

      selectItem(id);
    }, [selectionMode, selectItem, openSelection]);

    //
    final cancelSelection = useCallback(() {
      selectedIds.value = [];
      onSelectionModChange?.call(false);
      selectionMode.value = false;
    }, [selectionMode, selectedIds]);

    //
    final selectAll = useCallback((bool? v) {
      if (v == null) return;
      if (v) {
        selectedIds.value = data.map((i) => id(i)).toList();
      } else {
        selectedIds.value = [];
      }
    }, [data]);

    return _DataTable(
      isSelectionMode: selectionMode.value,
      isAllSelected: selectedIds.value.length == data.length,
      onSelectAllChange: selectAll,
      data: data,
      onLongPres: longPres,
      isSelected: selected,
      changeSelected: changeSelected,
      id: id,
      headers: headers,
      body: body,
      cancelSelectionMode: cancelSelection,
      onEdit: onEdit,
      numbered: withNumbers,
    );
  }
}

class SelectionCancel extends StatelessWidget {
  const SelectionCancel(
    this.cancelSelection, {
    super.key,
  });

  final Function() cancelSelection;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface.withAlpha(100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(onPressed: cancelSelection, child: const Text('cancel')),
        ],
      ),
    );
  }
}

class _DataTable<T> extends StatelessWidget {
  const _DataTable({
    super.key,
    required this.isSelectionMode,
    required this.isAllSelected,
    required this.onSelectAllChange,
    required this.data,
    required this.onLongPres,
    required this.isSelected,
    required this.changeSelected,
    required this.id,
    required this.headers,
    required this.body,
    required this.cancelSelectionMode,
    this.onEdit,
    this.numbered = true,
  });

  final bool isSelectionMode;
  final bool numbered;
  final bool isAllSelected;
  final Function(bool?) onSelectAllChange;
  final List<T> data;
  final Function(int id) onLongPres;
  final Function(int id) isSelected;
  final Function(bool? v, int id) changeSelected;
  final int Function(T item) id;
  final List<String> headers;
  final List<Widget> Function(T item) body;
  final Function() cancelSelectionMode;
  final Function(T obj)? onEdit;

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.symmetric(vertical: 14, horizontal: 5);
    const borderSide = BorderSide(width: 0);
    return SingleChildScrollView(
      // child: TableWidget(),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Table(
                border: TableBorder(bottom: borderSide.copyWith(width: 0.1)),
                // TableBorder.symmetric(),
                columnWidths: <int, TableColumnWidth>{
                  0: const FlexColumnWidth(0.4),
                  headers.length + 1: const FlexColumnWidth(0.4)
                },
                children: [
                  TableRow(
                    children: [
                      if (isSelectionMode)
                        TableCell(
                          child: Checkbox(
                            side: borderSide,
                            value: isAllSelected,
                            onChanged: onSelectAllChange,
                          ),
                        ),
                      if (!isSelectionMode && numbered)
                        const TableCell(
                          child: Padding(
                            padding: padding,
                            child: Text('.'),
                          ),
                        ),
                      ...List.generate(
                        headers.length,
                        (index) => TableCell(
                          child: Padding(
                            padding: padding,
                            child: Text(
                              headers[index],
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                        ),
                      ),
                      if (onEdit != null)
                        const TableCell(
                          child: Text(''),
                        )
                    ],
                  ),
                  ...List.generate(
                    data.length,
                    (indx) {
                      final T e = data[indx];
                      return TableRow(
                        children: [
                          if (isSelectionMode)
                            TableCell(
                              child: Checkbox(
                                side: borderSide,
                                value: isSelected(id(e)),
                                onChanged: (bool? value) =>
                                    changeSelected(value, id(e)),
                              ),
                            ),
                          if (!isSelectionMode && numbered)
                            TableCell(
                              child: Padding(
                                padding: padding,
                                child: Text('${indx + 1}'),
                              ),
                            ),
                          ...body(e).map(
                            (w) => TableCell(
                              child: InkWell(
                                child: Padding(
                                  padding: padding,
                                  child: w,
                                ),
                                onLongPress: () => onLongPres(id(e)),
                              ),
                            ),
                          ),
                          if (onEdit != null)
                            TableCell(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: InkWell(
                                  child: const Icon(Icons.edit_note),
                                  onTap: () => (onEdit ?? (T _) {})(e),
                                ),
                              ),
                            )
                        ],
                      );
                    },
                  )
                ],
                // source: A().init(data),
              ),
            ],
          ),
          if (isSelectionMode)
            Positioned(
              top: 0.0,
              right: 0.0,
              child: IconButton(
                onPressed: cancelSelectionMode,
                icon: const Icon(Icons.add),
              ),
            ),
        ],
      ),
    );
  }
}
