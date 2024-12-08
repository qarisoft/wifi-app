import 'package:app/ui/pages/cards/v2.dart';
import 'package:app/ui/pages/customers/index.dart';
import 'package:app/ui/pages/orders_/v2.dart';
import 'package:app/ui/widgets/with_loading.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home/home_page.dart';

class UiNotifier extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  go(int index) {
    state = index;
    // ref
  }
}

final uiProvider = NotifierProvider<UiNotifier, int>(() {
  return UiNotifier();
});

class UiPage extends ConsumerWidget {
  UiPage({super.key});

  final List<Widget> pages = [
    const HomePage2(),
    const CustomersPage(),
    const OrderHdrPage(),
    const CardsPageV2()
  ];

  @override
  Widget build(BuildContext context, ref) {
    final index = ref.watch(uiProvider);
    final colr = Theme.of(context).colorScheme;
    return WithLoading(
      child: Scaffold(
        // drawer: CustomeDrawar(),
        bottomNavigationBar: CurvedNavigationBar(
          iconPadding: 5,
          // animationCurve: Curves.bounceIn,
          animationDuration: const Duration(milliseconds: 200),
          // buttonBackgroundColor: colr.secondary,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          color: colr.surface,
          items: const [
            CurvedNavigationBarItem(
              child: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.person),
              label: 'Customer',
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.add),
              label: 'Orders',
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.newspaper),
              label: 'Products',
            ),
          ],
          onTap: (i) => ref.read(uiProvider.notifier).go(i)
          // Handle button tap
          ,
        ),
        body: pages[index],
      ),
    );
  }
}

// class PageItem extends StatelessWidget {
//   const PageItem(
//       {super.key,
//       required this.title,
//       this.icon,
//       this.active = false,
//       required this.action});

//   final String title;
//   final IconData? icon;
//   final bool active;
//   final Function() action;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         IconButton(
//           onPressed: action,
//           icon: Icon(
//             icon ?? Icons.ac_unit_rounded,
//             color: active ? Colors.blue : null,
//           ),
//         ),
//         Text(title)
//       ],
//     );
//   }
// }
