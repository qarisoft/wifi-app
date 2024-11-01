// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderItemObj {
  OrderItem get orderItem => throw _privateConstructorUsedError;
  Product get product => throw _privateConstructorUsedError;

  /// Create a copy of OrderItemObj
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemObjCopyWith<OrderItemObj> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemObjCopyWith<$Res> {
  factory $OrderItemObjCopyWith(
          OrderItemObj value, $Res Function(OrderItemObj) then) =
      _$OrderItemObjCopyWithImpl<$Res, OrderItemObj>;
  @useResult
  $Res call({OrderItem orderItem, Product product});

  $OrderItemCopyWith<$Res> get orderItem;
}

/// @nodoc
class _$OrderItemObjCopyWithImpl<$Res, $Val extends OrderItemObj>
    implements $OrderItemObjCopyWith<$Res> {
  _$OrderItemObjCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItemObj
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderItem = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      orderItem: null == orderItem
          ? _value.orderItem
          : orderItem // ignore: cast_nullable_to_non_nullable
              as OrderItem,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ) as $Val);
  }

  /// Create a copy of OrderItemObj
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderItemCopyWith<$Res> get orderItem {
    return $OrderItemCopyWith<$Res>(_value.orderItem, (value) {
      return _then(_value.copyWith(orderItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderItemObjImplCopyWith<$Res>
    implements $OrderItemObjCopyWith<$Res> {
  factory _$$OrderItemObjImplCopyWith(
          _$OrderItemObjImpl value, $Res Function(_$OrderItemObjImpl) then) =
      __$$OrderItemObjImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderItem orderItem, Product product});

  @override
  $OrderItemCopyWith<$Res> get orderItem;
}

/// @nodoc
class __$$OrderItemObjImplCopyWithImpl<$Res>
    extends _$OrderItemObjCopyWithImpl<$Res, _$OrderItemObjImpl>
    implements _$$OrderItemObjImplCopyWith<$Res> {
  __$$OrderItemObjImplCopyWithImpl(
      _$OrderItemObjImpl _value, $Res Function(_$OrderItemObjImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderItemObj
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderItem = null,
    Object? product = null,
  }) {
    return _then(_$OrderItemObjImpl(
      orderItem: null == orderItem
          ? _value.orderItem
          : orderItem // ignore: cast_nullable_to_non_nullable
              as OrderItem,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$OrderItemObjImpl implements _OrderItemObj {
  const _$OrderItemObjImpl({required this.orderItem, required this.product});

  @override
  final OrderItem orderItem;
  @override
  final Product product;

  @override
  String toString() {
    return 'OrderItemObj(orderItem: $orderItem, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemObjImpl &&
            (identical(other.orderItem, orderItem) ||
                other.orderItem == orderItem) &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderItem, product);

  /// Create a copy of OrderItemObj
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemObjImplCopyWith<_$OrderItemObjImpl> get copyWith =>
      __$$OrderItemObjImplCopyWithImpl<_$OrderItemObjImpl>(this, _$identity);
}

abstract class _OrderItemObj implements OrderItemObj {
  const factory _OrderItemObj(
      {required final OrderItem orderItem,
      required final Product product}) = _$OrderItemObjImpl;

  @override
  OrderItem get orderItem;
  @override
  Product get product;

  /// Create a copy of OrderItemObj
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemObjImplCopyWith<_$OrderItemObjImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderCreateState {
  List<Customer> get customers => throw _privateConstructorUsedError;
  Order get order => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  List<OrderItemObj> get items => throw _privateConstructorUsedError;

  /// Create a copy of OrderCreateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderCreateStateCopyWith<OrderCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCreateStateCopyWith<$Res> {
  factory $OrderCreateStateCopyWith(
          OrderCreateState value, $Res Function(OrderCreateState) then) =
      _$OrderCreateStateCopyWithImpl<$Res, OrderCreateState>;
  @useResult
  $Res call(
      {List<Customer> customers,
      Order order,
      List<Product> products,
      List<OrderItemObj> items});

  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class _$OrderCreateStateCopyWithImpl<$Res, $Val extends OrderCreateState>
    implements $OrderCreateStateCopyWith<$Res> {
  _$OrderCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderCreateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = null,
    Object? order = null,
    Object? products = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      customers: null == customers
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItemObj>,
    ) as $Val);
  }

  /// Create a copy of OrderCreateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res> get order {
    return $OrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderCreateStateImplCopyWith<$Res>
    implements $OrderCreateStateCopyWith<$Res> {
  factory _$$OrderCreateStateImplCopyWith(_$OrderCreateStateImpl value,
          $Res Function(_$OrderCreateStateImpl) then) =
      __$$OrderCreateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Customer> customers,
      Order order,
      List<Product> products,
      List<OrderItemObj> items});

  @override
  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class __$$OrderCreateStateImplCopyWithImpl<$Res>
    extends _$OrderCreateStateCopyWithImpl<$Res, _$OrderCreateStateImpl>
    implements _$$OrderCreateStateImplCopyWith<$Res> {
  __$$OrderCreateStateImplCopyWithImpl(_$OrderCreateStateImpl _value,
      $Res Function(_$OrderCreateStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderCreateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = null,
    Object? order = null,
    Object? products = null,
    Object? items = null,
  }) {
    return _then(_$OrderCreateStateImpl(
      customers: null == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItemObj>,
    ));
  }
}

/// @nodoc

class _$OrderCreateStateImpl implements _OrderCreateState {
  const _$OrderCreateStateImpl(
      {required final List<Customer> customers,
      required this.order,
      required final List<Product> products,
      required final List<OrderItemObj> items})
      : _customers = customers,
        _products = products,
        _items = items;

  final List<Customer> _customers;
  @override
  List<Customer> get customers {
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customers);
  }

  @override
  final Order order;
  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<OrderItemObj> _items;
  @override
  List<OrderItemObj> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'OrderCreateState(customers: $customers, order: $order, products: $products, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderCreateStateImpl &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers) &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_customers),
      order,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_items));

  /// Create a copy of OrderCreateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderCreateStateImplCopyWith<_$OrderCreateStateImpl> get copyWith =>
      __$$OrderCreateStateImplCopyWithImpl<_$OrderCreateStateImpl>(
          this, _$identity);
}

abstract class _OrderCreateState implements OrderCreateState {
  const factory _OrderCreateState(
      {required final List<Customer> customers,
      required final Order order,
      required final List<Product> products,
      required final List<OrderItemObj> items}) = _$OrderCreateStateImpl;

  @override
  List<Customer> get customers;
  @override
  Order get order;
  @override
  List<Product> get products;
  @override
  List<OrderItemObj> get items;

  /// Create a copy of OrderCreateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderCreateStateImplCopyWith<_$OrderCreateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
