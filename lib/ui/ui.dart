import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/customers/customers_index.dart';
import 'pages/home/home_page.dart';
import 'pages/orders/orders_index.dart';
import 'pages/products/products_index.dart';
// import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

export './pages/products/products_index.dart';

class UiNotifier extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  go(int index) {
    state = index;
  }
}

final uiProvider = NotifierProvider<UiNotifier, int>(() {
  return UiNotifier();
});

class UiPage extends ConsumerWidget {
  UiPage({super.key});

  final List<Widget> pages = [
    const Home(),
    const CustomersPage(),
    const OrdersPage(),
    const ProductsPage()
  ];

  @override
  Widget build(BuildContext context, ref) {
    final index = ref.watch(uiProvider);
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.blueAccent,
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

class PageItem extends StatelessWidget {
  const PageItem(
      {super.key,
      required this.title,
      this.icon,
      this.active = false,
      required this.action});

  final String title;
  final IconData? icon;
  final bool active;
  final Function() action;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: action,
          icon: Icon(
            icon ?? Icons.ac_unit_rounded,
            color: active ? Colors.blue : null,
          ),
        ),
        Text(title)
      ],
    );
  }
}
