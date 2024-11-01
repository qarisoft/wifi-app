import 'package:flutter/foundation.dart' show immutable;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer.freezed.dart';

@freezed
class Customer with _$Customer {
  const factory Customer({
    required int id,
    required String name,
    required String phone,
  }) = _Customer;

  factory Customer.empty() => const Customer(id: 0, name: '-', phone: '-');
}

// final int id;
// final String phone;
// final String name;

//
// @immutable
// final class Customer {
//   const Customer({required this.id, required this.name, required this.phone});
//
//   final int id;
//   final String phone;
//   final String name;
//
//   @override
//   String toString() {
//     return 'Customer{id: $id, phone: $phone, name: $name}';
//   }
//
//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is Customer && runtimeType == other.runtimeType && id == other.id;
//
//   @override
//   int get hashCode => id.hashCode;
//
//   Customer edit({String? name2, String? phone2}) {
//     return Customer(id: id, name: name2 ?? name, phone: phone2 ?? phone);
//   }
// }
