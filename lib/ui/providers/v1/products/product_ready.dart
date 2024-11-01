import 'package:app/ui/providers/v1/products/products.dart'
    show Products, productsProvider;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/models/v1/product.dart';

part 'product_ready.g.dart';

@Riverpod(dependencies: [Products], keepAlive: true)
List<Product> productsReady(ProductsReadyRef ref) {
  final List<Product> products = ref
      .watch(productsProvider)
      .when(data: (data) => data, error: (e, r) => [], loading: () => []);
  // final a = [...?products.value];
  return products;
}
