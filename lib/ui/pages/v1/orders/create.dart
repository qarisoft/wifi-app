// import 'package:app/ui/providers/create.dart';
// import 'package:app/ui/providers/v1/orders/get_order.dart';
// import 'package:app/ui/providers/v1/orders/order_create.dart';
// import 'package:app/ui/share/ex.dart';
// import 'package:app/ui/widgets/buttons/confirm.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:input_quantity/input_quantity.dart';

// import 'components/add_order.dart';
// import 'components/editable_customer.dart';
// import 'components/table.dart';

// class CreateOrder extends StatelessWidget {
//   const CreateOrder({super.key, required this.orderId});

//   final int orderId;

//   @override
//   Widget build(BuildContext context) {
//     final _formKey = GlobalKey<FormState>();
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order $orderId'),
//       ),
//       body: SafeArea(
//           child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Form(
//           key: _formKey,
//           child: HookConsumer(
//             builder: (context, ref, child) {
//               final state = ref.watch(orderCreateProvider(orderId));
//               final finalPrice = useState<double>(0.0);

//               return state.when(
//                 data: (data) {
//                   finalPrice.value = data.items.fold(0.0,
//                       (a, b) => a + (b.product.price * b.orderItem.quantity));
//                   return Column(
//                     mainAxisSize: MainAxisSize.max,
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       CustomerEditableWidget(orderId),
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.stretch,
//                           children: [
//                             20.vSpace,
//                             if (!data.order.isDelivered)
//                               AddOrderItemWidget(orderId: orderId),
//                             20.vSpace,
//                             OrderItemsTable(
//                               items: data.items,
//                             ),
//                             20.vSpace,
//                             Row(
//                               children: [
//                                 Text(
//                                   'Final Price',
//                                   style: Theme.of(context)
//                                       .textTheme
//                                       .bodyLarge
//                                       ?.copyWith(fontWeight: FontWeight.w500),
//                                 ),
//                                 20.hSpace,
//                                 Consumer(
//                                   builder: (context, ref, child) {
//                                     final order =
//                                         ref.watch(getOrderProvider(orderId));
//                                     if (order != null && !order.isDelivered) {
//                                       return InputQty.double(
//                                         minVal: 0,
//                                         decoration: const QtyDecorationProps(
//                                           contentPadding: EdgeInsets.all(10),
//                                         ),
//                                         initVal: finalPrice.value,
//                                       );
//                                     }
//                                     final s =
//                                         (order?.totalPrice ?? 0).toString();
//                                     return Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Text('$s RY'),
//                                     );
//                                   },
//                                 )
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                       Confirm(orderId, finalPrice.value)
//                     ],
//                   );
//                 },
//                 error: (error, stackTrace) => Text('${error.toString()}'),
//                 loading: () => const CircularProgressIndicator(),
//               );
//             },
//           ),
//         ),
//       )),
//     );
//   }
// }

// class Confirm extends ConsumerWidget {
//   const Confirm(this.orderId, this.finalPrice, {super.key});

//   final int orderId;
//   final double finalPrice;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final isDelivered =
//         ref.watch(getOrderProvider(orderId).select((s) => s?.isDelivered));
//     if (isDelivered != null && isDelivered) {
//       return const SizedBox();
//     }
//     return ConfirmButton(
//       onPressed: () {
//         showDialog(
//           context: context,
//           builder: (context) {
//             return AlertDialog(
//               title: const Text('Confirmation'),
//               content: Text('Total price is   ${finalPrice}'),
//               actions: [
//                 ElevatedButton(
//                     onPressed: () {
//                       ref.read(ordersProvider.notifier).deliverOrder(orderId);
//                       Navigator.of(context).pop();
//                     },
//                     child: const Text('confirm'))
//               ],
//             );
//           },
//         );
//       },
//     );
//   }
// }
