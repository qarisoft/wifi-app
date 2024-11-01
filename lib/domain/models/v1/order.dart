import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'order.freezed.dart';

@freezed
class Order with _$Order {
  const factory Order({
    required int id,
    required int customerId,
    @Default(0) double totalPrice,
    @Default(false) bool isDelivered,
  }) = _Order;
}
