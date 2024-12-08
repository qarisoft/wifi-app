import 'package:app/domain/models/v2/sales/point_of_sales/point_of_sales.dart';
import 'package:app/ui/widgets/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../customers/provider/provider.dart';

class CustomerDropDown extends StatelessWidget {
  const CustomerDropDown({this.onChange, super.key});

  final Function(int? id)? onChange;

  get _onChange => onChange ?? (int id) => {};

  @override
  Widget build(BuildContext context) {
    return HookConsumer(
      builder: (context, ref, c) {
        final pointSelection = useTextEditingController();
        return ref.watch(customerProvider).when(
            data: (points) {
              return DropdownMenu(
                controller: pointSelection,
                width: 300,
                label: Text(
                  'Customer',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                onSelected: _onChange,
                dropdownMenuEntries: points.map<DropdownMenuEntry<int>>(
                  (PointOfSale c) {
                    return DropdownMenuEntry<int>(
                      value: c.id,
                      label: c.name,
                    );
                  },
                ).toList(),
              );
            },
            error: (_, __) => const LoaderError(),
            loading: () => const Loader());
      },
    );
  }
}
