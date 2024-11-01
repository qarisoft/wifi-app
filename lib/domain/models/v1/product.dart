import 'package:flutter/foundation.dart' show immutable;

@immutable
final class Product {
  const Product({required this.id, required this.name, required this.price});

  final int id;
  final double price;
  final String name;

  @override
  String toString() {
    return 'Product{id: $id, price: $price, name: $name}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Product && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;

  Product edit({String? name2, double? price2}) {
    return Product(id: id, name: name2 ?? name, price: price2 ?? price);
  }
}
