// import 'package:app/domain/models/v2/card/card.dart' as c;
// import 'package:app/ui/providers/create.dart' show cardsProvider;
// import 'package:app/ui/widgets/loader.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
//
// typedef Crd = c.Card;
//
// class CardsDropDown extends StatelessWidget {
//   const CardsDropDown({this.onChange, super.key});
//
//   final Function(int id)? onChange;
//
//   // get _onChange => onChange ?? (int id) => {};
//
//   @override
//   Widget build(BuildContext context) {
//     final controller = useTextEditingController();
//     final selected = useState<Crd?>(null);
//     // final pointsP = ref.watch(cardsProvider);
//     // final points = pointsP.value ?? [];
//     //
//     final updateSelected = useCallback((int? id) {
//       // final p = point ?? selected.value;
//       // selected.value = p;
//       id != null ? onChange?.call(id) : null;
//     }, []);
//     const w = Loader();
//     return ref.watch(cardsProvider).whenData((points) {
//           return DropdownMenu<int>(
//             controller: controller,
//             inputDecorationTheme: Theme.of(context).inputDecorationTheme,
//             width: 300,
//             // controller: controller,
//             // enableFilter: true,
//             // requestFocusOnTap: true,
//             label: Text(
//               'Card',
//               style: Theme.of(context).textTheme.bodySmall,
//             ),
//             onSelected: updateSelected,
//             dropdownMenuEntries: points.map<DropdownMenuEntry<int>>(
//               (Crd c) {
//                 return DropdownMenuEntry<int>(
//                   value: c.id,
//                   label: c.name,
//                 );
//               },
//             ).toList(),
//             // initialSelection: selectedCustomer.value,
//           );
//         }).value ??
//         w;
//   }
// }
