import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/models/v1/product.dart' show Product;
import 'product_ready.dart' show productsReady, productsReadyProvider;

part 'get_product.g.dart';

@Riverpod(dependencies: [productsReady])
Product getProduct(GetProductRef ref, int id) {
  final products = ref.watch(productsReadyProvider);
  return products.where((p) => p.id == id).first;
}
