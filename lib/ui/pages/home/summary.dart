// import 'package:app/ui/widgets/layout/src/data_table.dart';
// import 'package:app/domain/models/ui/cards_sumary.dart';
import 'package:app/ui/share/data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'provider/provider.dart';

final source = DataSource<Map<String, dynamic>>(toJson: (i) => i, keys: ['id']);

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});
  Widget getLabel(String s) {
    // if (s=='broken') {
    //   return Text('');
    // }
    return Text(s);
  }

  @override
  Widget build(BuildContext context) {
    return HookConsumer(
      builder: (context, ref, child) {
        final summary =
            ref.watch(summeryProvider).whenOrNull(data: (d) => d) ?? [];
        source.init(summary);
        // final
        final keys =
            useState<List<String>>(['card', 'store', 'broken', 'return']);
        source.setKeys(keys.value);

        return Padding(
            padding: const EdgeInsets.all(8.0),
            child: PaginatedDataTable(
              // columnSpacing: 70,
              // showCheckboxColumn: ,

              showEmptyRows: false,
              columns: keys.value.map(
                (s) {
                  return DataColumn(
                    label: getLabel(s),
                  );
                },
              ).toList(),
              source: source,
            ));
      },
    );
  }
}

// DataTableWidget(
//             summary,
//             id: (_) => 1,
//             headers: const ['', 'available', 'D/inValid'],
//             body: (item) {
//               // final plus =
//                   // item.validReturned > 0 ? " + ${item.validReturned}" : "";
//               // final inStore = "${item.store}$plus";
//               return [
//                 Text('${item.item} '),
//                 Text('${item.available}'),
//                 // Text(inStore),
//                 // Text('${item.soled}'),
//                 // Text('${item.broken}'),
//                 Text('${item.outDated + item.broken}'),
//                 // Text('${item.//////////////////////////////}'),
//                 // Text('${item.total}'),
//               ];
//             },
//             withNumbers: false,

//             // onEdit: (_) {},
//           ),
