// import 'package:flutter/foundation.dart' show immutable;
import 'package:app/domain/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orderItem.freezed.dart';

@freezed
class OrderItem with _$OrderItem {
  factory OrderItem({
    required int id,
    required int productId,
    required int orderId,
    required int quantity,
    @Default(0) double price,
    @Default(0) double cost,
  }) = _OrderItem;
}

@freezed
class OrderItemWithProduct with _$OrderItemWithProduct {
  factory OrderItemWithProduct({
    required int id,
    required Product product,
    required int orderId,
    required int quantity,
    @Default(0) double price,
    @Default(0) double cost,
  }) = _OrderItemWithProduct;
}
