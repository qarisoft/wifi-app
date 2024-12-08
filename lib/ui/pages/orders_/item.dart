import 'package:app/domain/models/v2/sales/sales_order/sales_detail/sales_detail.dart';
import 'package:app/domain/models/v2/sales/sales_order/sales_header/sales_header.dart';
import 'package:app/ui/pages/components/confirm.dart';
import 'package:app/ui/pages/components/create_model.dart';
import 'package:app/ui/pages/customers/provider/provider.dart';
import 'package:app/ui/pages/orders_/create_ordr_dtl.dart';
// import 'package:app/ui/pages/orders_/create_ordr_dtl.dart';
import 'package:app/ui/pages/orders_/edit_item_dtl.dart';
import 'package:app/ui/pages/orders_/edit_order.dart';
import 'package:app/ui/pages/orders_/provider/order_dtls.dart';
import 'package:app/ui/pages/orders_/provider/provider.dart';
import 'package:app/ui/providers/v2/card/card.dart';
import 'package:app/ui/share/data_source.dart';
import 'package:app/ui/share/ex.dart';
import 'package:app/ui/share/theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderItemHeader extends StatelessWidget {
  const OrderItemHeader(this.header, {super.key});
  final SalesOrderHeader header;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Consumer(
        builder: (context, ref, child) {
          final customer = ref.watch(getCustomerProvider(header.salePointId));
          final name = customer?.name ?? 'none';
          final status = header.isAproved
              ? 'Closed'
              : header.status
                  ? 'Draft'
                  : 'In Active';
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Text(
                    'Header Info',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  10.hSpace,
                  if (!header.isAproved)
                    InkWell(
                      onTap: () {
                        createModel(context, EditOrderHdr(header));
                      },
                      child: const Icon(Icons.edit),
                    ),
                  const Spacer(),
                  if (!header.isAproved)
                    TextButton(
                        onPressed: () {
                          confirm(
                            context: context,
                            actionText: 'Close',
                            titleText: 'Close Order',
                            action: () {
                              ref
                                  .read(orderHdrProvider.notifier)
                                  .approve(header.id);
                            },
                          );
                        },
                        child: const Text('Done')),
                  // if (header.isAproved) const Text('Closed')
                ],
              ),
              10.vSpace,
              const Divider(),
              10.vSpace,
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Customer : $name',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  Text(
                    'Status : $status',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              10.vSpace,
              // const Div(),
              // 5.vSpace,
              Text(
                'Statment :\n${header.statement}',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              10.vSpace,

              const Divider(),
            ],
          );
        },
      ),
    );
  }
}

class MyWidget extends StatelessWidget implements PreferredSizeWidget {
  const MyWidget(this.header, {super.key});
  final SalesOrderHeader header;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: OrderItemHeader(header),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(150);
}

final source = DataSource<SalesOrderDtl>(
    toJson: (i) {
      return {...i.toJson(), 'cost': i.outQty * i.cardPrice};
    },
    keys: ['id']);

class OrderItemTable extends StatelessWidget {
  const OrderItemTable({super.key, required this.headerId, this.create_});
  final int headerId;
  final Function()? create_;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final d =
            ref.watch(orderDtlsOfHdr(headerId)).whenOrNull(data: (d) => d);

        final header = ref.watch(orderHdr(headerId)).whenOrNull(data: (d) => d);

        final data = [...?d];
        getRow(SalesOrderDtl dtl) {
          return DataRow(
            cells: [
              DataCell(
                const Icon(Icons.edit_note_sharp),
                onTap: () => createModel(context, EditOrderDtl(dtl)),
              ),
              DataCell(CardName(dtl.cardId)),
              DataCell(Text('${dtl.cardPrice}')),
              DataCell(Text('${dtl.outQty}')),
              DataCell(Text('${dtl.cardPrice * dtl.outQty}')),
              DataCell(Text(dtl.isFree ? 'free' : '-')),
            ],
          );
        }
        // source.row=getRow;

        source.init(data, getRow);
        perPage() {
          if (data.isNotEmpty && data.length < 8) {
            return data.length;
          }
          if (data.isEmpty) {
            return 1;
          }
          return 8;
        }

        totalPrice() {
          if (data.isEmpty) {
            return 0;
          }
          return data.map((i) {
            return i.outQty * i.cardPrice;
          }).fold(0.0, (a, b) {
            return a + b;
          });
        }

        return Column(
          children: [
            PaginatedDataTable(
              columnSpacing: 30,
              showCheckboxColumn: true,
              rowsPerPage: perPage(),
              showEmptyRows: false,
              header: const Text(
                'Items',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              actions: [
                IconButton(
                  color: AppTheme.g900,
                  onPressed:
                      // null,
                      header != null && !header.isAproved ? create_ : null,
                  icon: const Icon(
                    Icons.add,
                    color: AppTheme.g900,
                  ),
                )
              ],
              columns: const [
                DataColumn(label: Text('#')),
                DataColumn(label: Text('card')),
                DataColumn(label: Text('unit price')),
                DataColumn(label: Text('qty')),
                DataColumn(label: Text('cost')),
                DataColumn(label: Text('free')),
              ],
              source: source,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  5.hSpace,
                  Text('Total price : ${totalPrice()} RYS'),
                ],
              ),
            ),
            50.vSpace
          ],
        );
      },
    );
  }
}

class OrderItemPage2 extends StatelessWidget {
  const OrderItemPage2({super.key, required this.headerId});
  final int headerId;

  @override
  Widget build(BuildContext context) {
    create_() => createModel(context, CreateOrderDtl(headerId));

    return Consumer(builder: (context, ref, ch) {
      final header = ref.watch(orderHdr(headerId)).whenOrNull(data: (d) => d);
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                if (header != null) OrderItemHeader(header),
                OrderItemTable(headerId: headerId, create_: create_)
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => Navigator.of(context).maybePop(),
                icon: const Icon(Icons.arrow_back),
              ),
              if (header != null && !header.isAproved)
                FloatingActionButton(
                  onPressed: header.isAproved ? null : create_,
                  child: const Icon(Icons.add),
                ),
            ],
          ),
        ),
      );
    });
  }
}

class OrderItemPage extends StatelessWidget {
  const OrderItemPage({super.key, required this.headerId});
  final int headerId;
  void editItem(context, SalesOrderDtl od) => createModel(
        context,
        EditOrderDtl(od),
      );
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, w) {
      final header = ref.watch(orderHdr(headerId)).whenOrNull(data: (d) => d);
      final aproved = (header?.isAproved ?? false);
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                bottom: header != null ? MyWidget(header) : null,
                pinned: true,
              ),
              Consumer(
                builder: (context, ref, child) {
                  final data = [
                    ...?ref.watch(orderDtlsOfHdr(headerId)).whenOrNull(
                          data: (d) => d,
                        )
                  ];
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        if (index == 0) {
                          return const ListTile(
                            title: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(child: Text('Card')),
                                Expanded(child: Text('Qty')),
                                Expanded(child: Text('Cost')),
                                // Expanded(child: Text('Cost')),
                              ],
                            ),

                            // leading: Text('data'),
                          );
                        }
                        final ro = data[index - 1];
                        return Container(
                          color: index.isOdd
                              ? Theme.of(context).colorScheme.secondary
                              : Colors.black12,
                          child: ListTile(
                            title: Row(
                              // mainAxisAlignment: MainAxisAlignment.,
                              children: [
                                Expanded(child: CardName(ro.cardId)),
                                Expanded(child: Text('${ro.outQty}')),
                                Expanded(
                                  child: Text('${ro.cardPrice * ro.outQty} '),
                                )
                              ],
                            ),
                            onTap: aproved ? null : () => editItem(context, ro),
                          ),
                        );
                      },
                      childCount: data.length + 1,
                    ),
                  );
                },
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.of(context).maybePop();
                    },
                    child: const Icon(Icons.arrow_back)),
                const Spacer(),
                if (!aproved)
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          confirm(
                            context: context,
                            actionText: 'confirm',
                            titleText: 'Close Order',
                            action: () {},
                          );
                        },
                        child: const Text('Done'),
                      ),
                      20.hSpace,
                      FloatingActionButton(
                        onPressed: () {},
                        child: const Icon(Icons.add),
                      )
                    ],
                  )
              ],
            ),
          ),
        ),
      );
    });
  }
}

class CardName extends ConsumerWidget {
  const CardName(this.cardId, {super.key});

  final int cardId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cardname = ref
        .watch(cardsProvider)
        .whenOrNull(data: (d) => d.where((i) => i.id == cardId).first.name);
    return Text('$cardname');
  }
}

class Div extends StatelessWidget {
  const Div({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppTheme.g400,
    );
  }
}

























// import 'package:app/domain/models/index.dart';
// import 'package:app/domain/models/v2/sales/sales_order/sales_detail/sales_detail.dart';
// import 'package:app/ui/pages/components/confirm.dart';
// import 'package:app/ui/pages/components/create_form.dart';
// import 'package:app/ui/pages/components/customer_drop.dart';
// import 'package:app/ui/pages/customers/provider/provider.dart';
// import 'package:app/ui/pages/orders_/provider/provider.dart';
// import 'package:app/ui/providers/v2/card/card.dart';
// import 'package:app/ui/share/ex.dart';
// import 'package:app/ui/share/theme.dart';
// import 'package:app/ui/widgets/layout/index.dart';
// import 'package:app/ui/widgets/loader.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import 'edit_item_dtl.dart';
// import 'provider/order_dtls.dart';

// class OrderItemPag extends HookConsumerWidget {
//   const OrderItemPag(this.hdrId, {super.key});

//   final int hdrId;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return ref.watch(orderDtlsOfHdr(hdrId)).when(
//           data: (data) => _Page(data, hdrId),
//           error: (e, er) => const LoaderError(),
//           loading: () => const Loader(),
//         );
//   }
// }

// class _Page extends HookConsumerWidget {
//   const _Page(this.data, this.hdrId, {super.key});

//   final int hdrId;
//   final List<SalesOrderDtl> data;

//   get onEdit => editItem;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final customer = useState<int?>(0);
//     final totalPrice = data.fold(0.0, (a, b) {
//       return a + b.cardPrice * b.outQty;
//     });
//     return ref.watch(orderHdr(hdrId)).when(
//         data: (hdr) {
//           return Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       TextButton.icon(
//                         onPressed: !(hdr?.isAproved ?? true)
//                             ? () {
//                                 showCupertinoModalPopup(
//                                   context: context,
//                                   builder: (context) {
//                                     return CreateForm(
//                                         action: () {
//                                           final pId = customer.value;
//                                           if (pId != null) {
//                                             ref
//                                                 .read(orderHdrProvider.notifier)
//                                                 .editData(
//                                                     SlsOrdHdrData(
//                                                         salePointId: pId),
//                                                     hdrId);
//                                           }
//                                         },
//                                         title: 'edit customer',
//                                         children: [
//                                           CustomerDropDown(
//                                             onChange: (id) =>
//                                                 customer.value = id,
//                                           )
//                                         ]);
//                                   },
//                                 );
//                               }
//                             : null,
//                         label: const Icon(Icons.account_circle),
//                       ),
//                       5.hSpace,
//                       const Text('Customer'),
//                     ],
//                   ),
//                   Consumer(
//                     builder: (context, ref, child) {
//                       final PointOfSale? customer =
//                           ref.watch(customerProvider).whenOrNull(
//                         data: (d) {
//                           if (hdr != null) {
//                             return d
//                                 .where((i) => i.id == hdr.salePointId)
//                                 .firstOrNull;
//                           }
//                           return null;
//                         },
//                       );
//                       return Text(customer?.name ?? 'delivery');
//                     },
//                   )
//                 ],
//               ),
//               const Divider(
//                 thickness: 0.5,
//                 color: Colors.grey,
//               ),
//               Row(
//                 children: [
//                   const Text('statement: '),
//                   Consumer(
//                     builder: (context, ref, child) {
//                       final st =
//                           ref.watch(orderHdr(hdrId)).whenOrNull(data: (d) => d);
//                       return Text('${st?.statement}');
//                     },
//                   ),
//                 ],
//               ),
//               const Div(),
//               DataTableWidget(
//                 data,
//                 id: (i) => i.id,
//                 headers: const ['card', 'qty', 'price'],
//                 body: (ro) => [
//                   CardName(ro.cardId),
//                   Text('${ro.outQty}'),
//                   (hdr?.isAproved ?? false)
//                       ? Text('${ro.cardPrice * ro.outQty} ')
//                       : OdrDtlPrice(ro),
//                   // Text('${ro.isRejected}'),
//                   // Text('${ro.isValid}'),
//                 ],
//                 onEdit: (obj) => !obj.isApproved ? onEdit(context, obj) : null,
//               ),
//               10.vSpace,
//               // if (data.isNotEmpty)
//               Text('total: $totalPrice'),
//               const Div(),
//               if (!(hdr?.isAproved ?? true) && data.isNotEmpty)
//                 Row(
//                   children: [
//                     ElevatedButton(
//                       onPressed: () => confirm(
//                         context: context,
//                         actionText: 'sure',
//                         titleText: 'Approve Order',
//                         action: () {
//                           ref.read(orderHdrProvider.notifier).approve(hdrId);
//                         },
//                       ),
//                       child: const Text('approve'),
//                     ),
//                   ],
//                 )
//               // Spacer(),
//             ],
//           );
//         },
//         error: (e, s) => const LoaderError(),
//         loading: () => const Loader());
//   }

//   void editItem(context, SalesOrderDtl od) {
//     showCupertinoModalPopup(
//       context: context,
//       builder: (context) {
//         return EditOrderDtl(od);
//       },
//     );
//   }
// }

// class CardName extends ConsumerWidget {
//   const CardName(this.cardId, {super.key});

//   final int cardId;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final cardname = ref
//         .watch(cardsProvider)
//         .whenOrNull(data: (d) => d.where((i) => i.id == cardId).first.name);
//     return Text('$cardname');
//   }
// }

// class OdrDtlPrice extends HookConsumerWidget {
//   const OdrDtlPrice(this.dtlItm, {super.key});

//   final SalesOrderDtl dtlItm;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return ref.watch(cardsProvider).when(
//           data: (cards) {
//             final card = cards.where((c) => c.id == dtlItm.cardId);
//             if (card.isEmpty) {
//               return const Text('non');
//             }
//             final p = card.isNotEmpty ? card.first.price * dtlItm.outQty : 0;
//             return Text('$p');
//           },
//           error: (er, s) => Text('error $er'),
//           loading: () => const CircularProgressIndicator.adaptive(),
//         );
//   }
// }
