// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_with_customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderWithCustomer {
  Order get order => throw _privateConstructorUsedError;
  Customer get customer => throw _privateConstructorUsedError;

  /// Create a copy of OrderWithCustomer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderWithCustomerCopyWith<OrderWithCustomer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderWithCustomerCopyWith<$Res> {
  factory $OrderWithCustomerCopyWith(
          OrderWithCustomer value, $Res Function(OrderWithCustomer) then) =
      _$OrderWithCustomerCopyWithImpl<$Res, OrderWithCustomer>;
  @useResult
  $Res call({Order order, Customer customer});

  $OrderCopyWith<$Res> get order;
  $CustomerCopyWith<$Res> get customer;
}

/// @nodoc
class _$OrderWithCustomerCopyWithImpl<$Res, $Val extends OrderWithCustomer>
    implements $OrderWithCustomerCopyWith<$Res> {
  _$OrderWithCustomerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderWithCustomer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? customer = null,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
    ) as $Val);
  }

  /// Create a copy of OrderWithCustomer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res> get order {
    return $OrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }

  /// Create a copy of OrderWithCustomer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res> get customer {
    return $CustomerCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderWithCustomerImplCopyWith<$Res>
    implements $OrderWithCustomerCopyWith<$Res> {
  factory _$$OrderWithCustomerImplCopyWith(_$OrderWithCustomerImpl value,
          $Res Function(_$OrderWithCustomerImpl) then) =
      __$$OrderWithCustomerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Order order, Customer customer});

  @override
  $OrderCopyWith<$Res> get order;
  @override
  $CustomerCopyWith<$Res> get customer;
}

/// @nodoc
class __$$OrderWithCustomerImplCopyWithImpl<$Res>
    extends _$OrderWithCustomerCopyWithImpl<$Res, _$OrderWithCustomerImpl>
    implements _$$OrderWithCustomerImplCopyWith<$Res> {
  __$$OrderWithCustomerImplCopyWithImpl(_$OrderWithCustomerImpl _value,
      $Res Function(_$OrderWithCustomerImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderWithCustomer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? customer = null,
  }) {
    return _then(_$OrderWithCustomerImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
    ));
  }
}

/// @nodoc

class _$OrderWithCustomerImpl implements _OrderWithCustomer {
  const _$OrderWithCustomerImpl({required this.order, required this.customer});

  @override
  final Order order;
  @override
  final Customer customer;

  @override
  String toString() {
    return 'OrderWithCustomer(order: $order, customer: $customer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderWithCustomerImpl &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order, customer);

  /// Create a copy of OrderWithCustomer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderWithCustomerImplCopyWith<_$OrderWithCustomerImpl> get copyWith =>
      __$$OrderWithCustomerImplCopyWithImpl<_$OrderWithCustomerImpl>(
          this, _$identity);
}

abstract class _OrderWithCustomer implements OrderWithCustomer {
  const factory _OrderWithCustomer(
      {required final Order order,
      required final Customer customer}) = _$OrderWithCustomerImpl;

  @override
  Order get order;
  @override
  Customer get customer;

  /// Create a copy of OrderWithCustomer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderWithCustomerImplCopyWith<_$OrderWithCustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
