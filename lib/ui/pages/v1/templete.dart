// import 'package:flutter/material.dart';

// class CustomPage extends StatelessWidget {
//   CustomPage(
//       {super.key, required this.title, required this.children, this.create});

//   final String title;
//   final List<Widget> children;
//   final Function()? create;
//   final ScrollController controller = ScrollController(initialScrollOffset: 0);
//   final ScrollController controller2 = ScrollController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.grey.shade300,
//         title: Text(
//           title,
//           style: Theme.of(context)
//               .textTheme
//               .titleLarge
//               ?.copyWith(fontWeight: FontWeight.w600),
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: IconButton.filledTonal(
//                 padding: const EdgeInsets.all(5),
//                 onPressed: create,
//                 icon: const Icon(Icons.add)),
//           )
//         ],
//       ),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Scrollbar(
//             thickness: 5,
//             interactive: true,
//             thumbVisibility: true,
//             trackVisibility: true,
//             radius: const Radius.circular(10),
//             controller: controller,
//             child: SingleChildScrollView(
//               scrollDirection: Axis.vertical,
//               controller: controller,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: children,
//               ),
//             ),
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add),
//         shape: CircleBorder(),
//         onPressed: () {},
//       ),
//     );
//   }
// }

// class Header extends StatelessWidget {
//   const Header({super.key, required this.title, this.action});

//   final String title;
//   final Function()? action;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           title,
//           style: Theme.of(context)
//               .textTheme
//               .titleLarge
//               ?.copyWith(fontWeight: FontWeight.w600),
//         ),
//         IconButton.outlined(onPressed: action, icon: const Icon(Icons.add))
//       ],
//     );
//   }
// }
