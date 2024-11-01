// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orderItem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderItem {
  int get id => throw _privateConstructorUsedError;
  int get productId => throw _privateConstructorUsedError;
  int get orderId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get cost => throw _privateConstructorUsedError;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemCopyWith<OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) then) =
      _$OrderItemCopyWithImpl<$Res, OrderItem>;
  @useResult
  $Res call(
      {int id,
      int productId,
      int orderId,
      int quantity,
      double price,
      double cost});
}

/// @nodoc
class _$OrderItemCopyWithImpl<$Res, $Val extends OrderItem>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? orderId = null,
    Object? quantity = null,
    Object? price = null,
    Object? cost = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderItemImplCopyWith<$Res>
    implements $OrderItemCopyWith<$Res> {
  factory _$$OrderItemImplCopyWith(
          _$OrderItemImpl value, $Res Function(_$OrderItemImpl) then) =
      __$$OrderItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int productId,
      int orderId,
      int quantity,
      double price,
      double cost});
}

/// @nodoc
class __$$OrderItemImplCopyWithImpl<$Res>
    extends _$OrderItemCopyWithImpl<$Res, _$OrderItemImpl>
    implements _$$OrderItemImplCopyWith<$Res> {
  __$$OrderItemImplCopyWithImpl(
      _$OrderItemImpl _value, $Res Function(_$OrderItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? orderId = null,
    Object? quantity = null,
    Object? price = null,
    Object? cost = null,
  }) {
    return _then(_$OrderItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$OrderItemImpl implements _OrderItem {
  _$OrderItemImpl(
      {required this.id,
      required this.productId,
      required this.orderId,
      required this.quantity,
      this.price = 0,
      this.cost = 0});

  @override
  final int id;
  @override
  final int productId;
  @override
  final int orderId;
  @override
  final int quantity;
  @override
  @JsonKey()
  final double price;
  @override
  @JsonKey()
  final double cost;

  @override
  String toString() {
    return 'OrderItem(id: $id, productId: $productId, orderId: $orderId, quantity: $quantity, price: $price, cost: $cost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.cost, cost) || other.cost == cost));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, productId, orderId, quantity, price, cost);

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      __$$OrderItemImplCopyWithImpl<_$OrderItemImpl>(this, _$identity);
}

abstract class _OrderItem implements OrderItem {
  factory _OrderItem(
      {required final int id,
      required final int productId,
      required final int orderId,
      required final int quantity,
      final double price,
      final double cost}) = _$OrderItemImpl;

  @override
  int get id;
  @override
  int get productId;
  @override
  int get orderId;
  @override
  int get quantity;
  @override
  double get price;
  @override
  double get cost;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderItemWithProduct {
  int get id => throw _privateConstructorUsedError;
  Product get product => throw _privateConstructorUsedError;
  int get orderId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get cost => throw _privateConstructorUsedError;

  /// Create a copy of OrderItemWithProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemWithProductCopyWith<OrderItemWithProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemWithProductCopyWith<$Res> {
  factory $OrderItemWithProductCopyWith(OrderItemWithProduct value,
          $Res Function(OrderItemWithProduct) then) =
      _$OrderItemWithProductCopyWithImpl<$Res, OrderItemWithProduct>;
  @useResult
  $Res call(
      {int id,
      Product product,
      int orderId,
      int quantity,
      double price,
      double cost});
}

/// @nodoc
class _$OrderItemWithProductCopyWithImpl<$Res,
        $Val extends OrderItemWithProduct>
    implements $OrderItemWithProductCopyWith<$Res> {
  _$OrderItemWithProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItemWithProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = null,
    Object? orderId = null,
    Object? quantity = null,
    Object? price = null,
    Object? cost = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderItemWithProductImplCopyWith<$Res>
    implements $OrderItemWithProductCopyWith<$Res> {
  factory _$$OrderItemWithProductImplCopyWith(_$OrderItemWithProductImpl value,
          $Res Function(_$OrderItemWithProductImpl) then) =
      __$$OrderItemWithProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Product product,
      int orderId,
      int quantity,
      double price,
      double cost});
}

/// @nodoc
class __$$OrderItemWithProductImplCopyWithImpl<$Res>
    extends _$OrderItemWithProductCopyWithImpl<$Res, _$OrderItemWithProductImpl>
    implements _$$OrderItemWithProductImplCopyWith<$Res> {
  __$$OrderItemWithProductImplCopyWithImpl(_$OrderItemWithProductImpl _value,
      $Res Function(_$OrderItemWithProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderItemWithProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = null,
    Object? orderId = null,
    Object? quantity = null,
    Object? price = null,
    Object? cost = null,
  }) {
    return _then(_$OrderItemWithProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$OrderItemWithProductImpl implements _OrderItemWithProduct {
  _$OrderItemWithProductImpl(
      {required this.id,
      required this.product,
      required this.orderId,
      required this.quantity,
      this.price = 0,
      this.cost = 0});

  @override
  final int id;
  @override
  final Product product;
  @override
  final int orderId;
  @override
  final int quantity;
  @override
  @JsonKey()
  final double price;
  @override
  @JsonKey()
  final double cost;

  @override
  String toString() {
    return 'OrderItemWithProduct(id: $id, product: $product, orderId: $orderId, quantity: $quantity, price: $price, cost: $cost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemWithProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.cost, cost) || other.cost == cost));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, product, orderId, quantity, price, cost);

  /// Create a copy of OrderItemWithProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemWithProductImplCopyWith<_$OrderItemWithProductImpl>
      get copyWith =>
          __$$OrderItemWithProductImplCopyWithImpl<_$OrderItemWithProductImpl>(
              this, _$identity);
}

abstract class _OrderItemWithProduct implements OrderItemWithProduct {
  factory _OrderItemWithProduct(
      {required final int id,
      required final Product product,
      required final int orderId,
      required final int quantity,
      final double price,
      final double cost}) = _$OrderItemWithProductImpl;

  @override
  int get id;
  @override
  Product get product;
  @override
  int get orderId;
  @override
  int get quantity;
  @override
  double get price;
  @override
  double get cost;

  /// Create a copy of OrderItemWithProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemWithProductImplCopyWith<_$OrderItemWithProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}
