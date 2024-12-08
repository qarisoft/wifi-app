import 'package:app/ui/widgets/layout/src/data_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../templet.dart';

class LayoutCaller<T> extends HookConsumerWidget {
  const LayoutCaller(
      {super.key,
      required this.data,
      this.itemPage,
      required this.id,
      required this.create,
      required this.headers,
      required this.body,
      required this.title,
      this.createItem,
      this.itemTitle,
      this.editItem,
      this.canCreate = true});

  final List<T> data;
  final Function(BuildContext context) create;
  final Function(BuildContext context, int id)? createItem;
  final int Function(T item) id;
  final List<String> headers;
  final List<Widget> Function(T item) body;
  final String title;
  final String? itemTitle;
  final Widget? Function(int id)? itemPage;
  final Function(BuildContext context, T itm)? editItem;
  final bool canCreate;

  get _createItem => createItem ?? (c) {};

  // Widget Function(int id) get _itemPage => itemPage ?? (_) => Container();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = useState<int?>(null);
    final selectionMod = useState<bool>(false);
    final onEditItem = useCallback((T itemObj) {
      if (editItem != null) {
        return editItem!(context, itemObj);
      }
      if (itemPage != null) {
        item.value = id(itemObj);
      }
    }, [item, context, editItem]);
    final isIndexPage = useCallback(() => item.value != null, [item]);
    final onSelectionModChange = useCallback((bool b) {
      selectionMod.value = b;
    }, [selectionMod]);

    //
    final floatingAction = useCallback(() {
      final hId = item.value;
      if (hId != null) {
        //TODO delete selected items
        _createItem(context, hId);
      } else {
        create(context);
      }
    }, [item]);
    return Layout(
      floatingAction: FloatingActionButton(
        onPressed: canCreate ? floatingAction : null,
        child: Icon(
          selectionMod.value ? Icons.delete_rounded : Icons.add,
        ),
      ),
      title: Row(
        children: [
          if (item.value != null)
            IconButton(
              onPressed: () => item.value = null,
              icon: const Icon(Icons.reset_tv),
            ),
          Text(item.value != null ? '$itemTitle ${item.value}' : title),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 50, left: 5, right: 5, top: 5),
        child: Builder(
          builder: (context) {
            final hdrId = item.value;
            if (hdrId != null && itemPage != null) {
              final page = itemPage?.call(hdrId);
              if (page != null) {
                return page;
              }
            }
            return DataTableWidget(
              data,
              id: id,
              headers: headers,
              body: body,
              onEdit: onEditItem,
              onSelectionModChange: onSelectionModChange,
            );
          },
        ),
      ),
    );
  }
}
