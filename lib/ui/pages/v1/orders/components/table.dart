// // import 'package:app/ui/pages/v1/orders/orders_index.dart';
// // import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import '../../../../providers/v1/orders/order_create.dart';

// // import '../orders_index.dart';

// // import '../../../providers/v1/orders/order_create.dart';

// class OrderItemsTable extends StatelessWidget {
//   const OrderItemsTable({super.key, required this.items});

//   final List<OrderItemObj> items;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         DataTable(
//           columnSpacing: 0,
//           horizontalMargin: 0,
//           columns: const [
//             DataColumn(label: Text('product')),
//             DataColumn(label: Text('Q')),
//             DataColumn(label: Text('cost')),
//             DataColumn(label: Text('TPrice')),
//           ],
//           rows: [
//             ...items.map((oItem) {
//               return DataRow(
//                 cells: [
//                   DataCell(Text(oItem.product.name)),
//                   DataCell(Text(oItem.orderItem.quantity.toString())),
//                   DataCell(Text((oItem.product.price * oItem.orderItem.quantity)
//                       .toString())),
//                   DataCell(Text(oItem.orderItem.price.toString())),
//                 ],
//               );
//             }),
//             DataRow(
//               cells: [
//                 const DataCell(Text('Total')),
//                 DataCell(
//                   Text(items
//                       .fold(0, (a, b) => a + b.orderItem.quantity)
//                       .toString()),
//                 ),
//                 DataCell(
//                   Text(
//                     items
//                         .map((item) =>
//                             item.orderItem.quantity * item.product.price)
//                         .fold(0.0, (a, b) => a + b)
//                         .toString(),
//                   ),
//                 ),
//                 DataCell(
//                   Text(items
//                       .fold(0.0, (a, b) => a + b.orderItem.price)
//                       .toString()),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ],
//     );
//   }
// }
