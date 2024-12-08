// import 'package:app/domain/create.dart';
// import 'package:app/ui/providers/create.dart';
// import 'package:app/ui/providers/v1/orders/order_create.dart';
// import 'package:app/ui/share/ex.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:input_quantity/input_quantity.dart';

// // import '../../../../domain/models/v1/product.dart';
// // import '../../../providers/v1/order_item/order_item.dart';
// // import '../../../providers/v1/orders/order_create.dart';

// class AddOrderItemWidget extends StatelessWidget {
//   const AddOrderItemWidget({super.key, required this.orderId});

//   final int orderId;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         const Text('.'),
//         IconButton.filled(
//             onPressed: () {
//               showDialog(
//                 context: context,
//                 builder: (context) {
//                   return AddOrderItemDialog(
//                     id: orderId,
//                   );
//                 },
//               );
//             },
//             icon: const Icon(Icons.add))
//       ],
//     );
//   }
// }

// class AddOrderItemDialog extends StatelessWidget {
//   const AddOrderItemDialog({super.key, required this.id});

//   final int id;

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//         contentPadding: const EdgeInsets.all(10),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//         content: HookConsumer(
//           builder: (context, ref, child) {
//             final data = ref.watch(orderCreateProvider(id)).value;
//             final selectedProduct = useState<Product?>(null);
//             final prodQuant = useState<int>(1);
//             final controller = useTextEditingController();

//             return Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   DropdownMenu<Product>(
//                     width: MediaQuery.of(context).size.width * 0.5,
//                     controller: controller,
//                     enableFilter: true,
//                     requestFocusOnTap: true,
//                     label: const Text('Product'),
//                     onSelected: (Product? prod) {
//                       selectedProduct.value = prod;
//                     },
//                     dropdownMenuEntries:
//                         (data?.products ?? []).map<DropdownMenuEntry<Product>>(
//                       (Product product) {
//                         return DropdownMenuEntry<Product>(
//                           value: product,
//                           label: '${product.name} - ${product.price}',
//                         );
//                       },
//                     ).toList(),
//                   ),
//                   10.vSpace,
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       InputQty.int(
//                         maxVal: 100,
//                         initVal: prodQuant.value,
//                         minVal: 1,
//                         // steps: 10,
//                         onQtyChanged: (val) {
//                           prodQuant.value = val;
//                           // print(val);
//                         },
//                       ),
//                       IconButton.filledTonal(
//                         onPressed: () {
//                           if (selectedProduct.value != null) {
//                             ref.read(orderItemsProvider.notifier).add(
//                                 orderId: id,
//                                 qt: prodQuant.value,
//                                 productId: selectedProduct.value!.id);

//                             Navigator.of(context).pop();
//                           }
//                         },
//                         icon: const Icon(Icons.check),
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             );
//           },
//         ));
//   }
// }
