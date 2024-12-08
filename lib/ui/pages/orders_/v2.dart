// import 'package:app/domain/create.dart';
// import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';
// import 'package:app/core/app.dart';
// import 'package:app/domain/models/v2/sales/sales_order/sales_detail/sales_detail.dart';
import 'package:app/domain/models/v2/sales/sales_order/sales_header/sales_header.dart';
// import 'package:app/domain/use_cases/use_case.dart';
// import 'package:app/domain/use_cases/v2/sales/sales.dart';
// import 'package:app/main.dart';
// import 'package:app/ui/pages/auth/components/textfield.dart';
// import 'package:app/ui/pages/components/boolean_icon.dart';
// import 'package:app/ui/pages/components/confirm.dart';
import 'package:app/ui/pages/components/create_model.dart';
// import 'package:app/ui/pages/customers/provider/provider.dart';
// import 'package:app/ui/pages/orders_/c.dart';
// import 'package:app/ui/pages/orders_/create_ordr_dtl.dart';
// import 'package:app/ui/pages/orders_/edit_order.dart';
// import 'package:app/ui/pages/orders_/provider/order_dtls.dart';
import 'package:app/ui/pages/orders_/provider/provider.dart';
// import 'package:app/ui/providers/v2/card/card.dart';
import 'package:app/ui/share/data_source.dart';
// import 'package:app/ui/share/ex.dart';
// import 'package:app/ui/share/theme.dart';
import 'package:app/ui/widgets/app_bar.dart';
import 'package:app/ui/widgets/loader.dart';
// import 'package:app/ui/pages/components/create_ordr_hdr.dart';
// import 'package:app/ui/widgets/layout/index.dart';
// import 'package:app/ui/widgets/loader.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'create.dart';
import 'item.dart';
// import 'edit_item_dtl.dart';
// import 'item.dart';
// import 'provider/provider.dart';
// class OrderHdrPageTable extends HookConsumerWidget {
//   const OrderHdrPageTable({super.key});
//   @override
//   Widget build(BuildContext context, ref) {
//     return ref.watch(orderHdrProvider).when(
//           data: (data) => _Page(data),
//           error: (e, r) => const LoaderError(),
//           loading: () => const Loader(),
//         );
//   }
// }

final source = DataSource(
  toJson: (SalesOrderHeader h) {
    return h.toJson();
  },
  keys: ['id'],
);

class OrderHdrPage extends StatefulWidget {
  const OrderHdrPage({super.key});
  static SalesOrderHeader empty = SalesOrderHeader.empty();

  @override
  State<OrderHdrPage> createState() => _OrderHdrPageState();
}

class _OrderHdrPageState extends State<OrderHdrPage> {
  String clean(String k) => k
      .split('is_')
      .last
      // .replaceAll('_id', '')
      .replaceAll('_at', ' At')
      .toCamalCase();

  Widget getLabel(String k) {
    if (k == 'id') {
      return const Text('#');
    }
    return Text(clean(k));
  }

  editItem(int headerId, c) {
    showDialog(
      context: c,
      builder: (context) {
        return Dialog.fullscreen(
          child: OrderItemPage2(headerId: headerId),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // source.getCell ??= getCellData;
    create_() => createModel(context, const CreateOrderHdr());

    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: Text('Orders'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(1),
          child: Column(
            children: [
              Consumer(
                builder: (context, ref, child) {
                  getRow(SalesOrderHeader h) {
                    return DataRow(
                      cells: [
                        DataCell(
                          const Icon(Icons.edit_note_sharp),
                          onTap: () => editItem(h.id, context),
                        ),
                        DataCell(SizedBox(
                            width: 100,
                            child: Text(
                              h.statement,
                              overflow: TextOverflow.ellipsis,
                            ))),
                        DataCell(Text(h.yearID.toString())),
                        DataCell(Text(h.isAproved
                            ? 'Closed'
                            : (h.status ? 'Draft' : 'in Active'))),
                      ],
                    );
                  }

                  source.row = getRow;

                  return ref.watch(orderHdrProvider).when(
                        data: (data) {
                          final keys =
                              OrderHdrPage.empty.toJson().keys.toList();
                          source.init(data);
                          source.setKeys(keys);

                          return PaginatedDataTable(
                            horizontalMargin: 10,
                            columns: const [
                              DataColumn(label: Text('edit')),
                              DataColumn(
                                  label: Text(
                                'statement',
                              )),
                              DataColumn(label: Text('year')),
                              DataColumn(label: Text('status')),
                            ],
                            source: source,
                          );
                        },
                        error: (e, s) {
                          return const LoaderError();
                        },
                        loading: () => const Loader(),
                      );
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: create_,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class Status extends StatelessWidget {
  const Status(this.hdr, {super.key});

  final SalesOrderHeader hdr;

  @override
  Widget build(BuildContext context) {
    if (hdr.isRejected) {
      return const Text('Reject');
    }
    if (hdr.isOutDated) {
      return const Text('OtD');
    }
    return const Text('');
  }
}

extension CamalCaseConverter on String {
  String toCamalCase() {
    if (contains('_')) {
      final a1 = split('_');
      final firstLetter = a1.last[0];
      final restWord = a1.last.replaceFirst(firstLetter, '');
      return '${a1.first} ${firstLetter.toUpperCase()}$restWord';
    }
    return this;
  }
}
