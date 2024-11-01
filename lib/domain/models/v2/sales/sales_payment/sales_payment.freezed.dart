// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SalePointPayment _$SalePointPaymentFromJson(Map<String, dynamic> json) {
  return _SalePointPayment.fromJson(json);
}

/// @nodoc
mixin _$SalePointPayment {
  int get id => throw _privateConstructorUsedError;
  int get salPointId => throw _privateConstructorUsedError;
  int get orderId => throw _privateConstructorUsedError; //
  int get inAmt => throw _privateConstructorUsedError;
  int get outAmt => throw _privateConstructorUsedError; //
  DateTime get payDate => throw _privateConstructorUsedError;
  int get payDescription => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError; //
  int get yearId => throw _privateConstructorUsedError; //
  String get extraInfo => throw _privateConstructorUsedError;

  /// Serializes this SalePointPayment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SalePointPayment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalePointPaymentCopyWith<SalePointPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalePointPaymentCopyWith<$Res> {
  factory $SalePointPaymentCopyWith(
          SalePointPayment value, $Res Function(SalePointPayment) then) =
      _$SalePointPaymentCopyWithImpl<$Res, SalePointPayment>;
  @useResult
  $Res call(
      {int id,
      int salPointId,
      int orderId,
      int inAmt,
      int outAmt,
      DateTime payDate,
      int payDescription,
      int status,
      int yearId,
      String extraInfo});
}

/// @nodoc
class _$SalePointPaymentCopyWithImpl<$Res, $Val extends SalePointPayment>
    implements $SalePointPaymentCopyWith<$Res> {
  _$SalePointPaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalePointPayment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? salPointId = null,
    Object? orderId = null,
    Object? inAmt = null,
    Object? outAmt = null,
    Object? payDate = null,
    Object? payDescription = null,
    Object? status = null,
    Object? yearId = null,
    Object? extraInfo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      salPointId: null == salPointId
          ? _value.salPointId
          : salPointId // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      inAmt: null == inAmt
          ? _value.inAmt
          : inAmt // ignore: cast_nullable_to_non_nullable
              as int,
      outAmt: null == outAmt
          ? _value.outAmt
          : outAmt // ignore: cast_nullable_to_non_nullable
              as int,
      payDate: null == payDate
          ? _value.payDate
          : payDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      payDescription: null == payDescription
          ? _value.payDescription
          : payDescription // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      yearId: null == yearId
          ? _value.yearId
          : yearId // ignore: cast_nullable_to_non_nullable
              as int,
      extraInfo: null == extraInfo
          ? _value.extraInfo
          : extraInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalePointPaymentImplCopyWith<$Res>
    implements $SalePointPaymentCopyWith<$Res> {
  factory _$$SalePointPaymentImplCopyWith(_$SalePointPaymentImpl value,
          $Res Function(_$SalePointPaymentImpl) then) =
      __$$SalePointPaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int salPointId,
      int orderId,
      int inAmt,
      int outAmt,
      DateTime payDate,
      int payDescription,
      int status,
      int yearId,
      String extraInfo});
}

/// @nodoc
class __$$SalePointPaymentImplCopyWithImpl<$Res>
    extends _$SalePointPaymentCopyWithImpl<$Res, _$SalePointPaymentImpl>
    implements _$$SalePointPaymentImplCopyWith<$Res> {
  __$$SalePointPaymentImplCopyWithImpl(_$SalePointPaymentImpl _value,
      $Res Function(_$SalePointPaymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalePointPayment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? salPointId = null,
    Object? orderId = null,
    Object? inAmt = null,
    Object? outAmt = null,
    Object? payDate = null,
    Object? payDescription = null,
    Object? status = null,
    Object? yearId = null,
    Object? extraInfo = null,
  }) {
    return _then(_$SalePointPaymentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      salPointId: null == salPointId
          ? _value.salPointId
          : salPointId // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      inAmt: null == inAmt
          ? _value.inAmt
          : inAmt // ignore: cast_nullable_to_non_nullable
              as int,
      outAmt: null == outAmt
          ? _value.outAmt
          : outAmt // ignore: cast_nullable_to_non_nullable
              as int,
      payDate: null == payDate
          ? _value.payDate
          : payDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      payDescription: null == payDescription
          ? _value.payDescription
          : payDescription // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      yearId: null == yearId
          ? _value.yearId
          : yearId // ignore: cast_nullable_to_non_nullable
              as int,
      extraInfo: null == extraInfo
          ? _value.extraInfo
          : extraInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalePointPaymentImpl implements _SalePointPayment {
  const _$SalePointPaymentImpl(
      {required this.id,
      required this.salPointId,
      required this.orderId,
      required this.inAmt,
      required this.outAmt,
      required this.payDate,
      required this.payDescription,
      required this.status,
      required this.yearId,
      required this.extraInfo});

  factory _$SalePointPaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalePointPaymentImplFromJson(json);

  @override
  final int id;
  @override
  final int salPointId;
  @override
  final int orderId;
//
  @override
  final int inAmt;
  @override
  final int outAmt;
//
  @override
  final DateTime payDate;
  @override
  final int payDescription;
  @override
  final int status;
//
  @override
  final int yearId;
//
  @override
  final String extraInfo;

  @override
  String toString() {
    return 'SalePointPayment(id: $id, salPointId: $salPointId, orderId: $orderId, inAmt: $inAmt, outAmt: $outAmt, payDate: $payDate, payDescription: $payDescription, status: $status, yearId: $yearId, extraInfo: $extraInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalePointPaymentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.salPointId, salPointId) ||
                other.salPointId == salPointId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.inAmt, inAmt) || other.inAmt == inAmt) &&
            (identical(other.outAmt, outAmt) || other.outAmt == outAmt) &&
            (identical(other.payDate, payDate) || other.payDate == payDate) &&
            (identical(other.payDescription, payDescription) ||
                other.payDescription == payDescription) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.yearId, yearId) || other.yearId == yearId) &&
            (identical(other.extraInfo, extraInfo) ||
                other.extraInfo == extraInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, salPointId, orderId, inAmt,
      outAmt, payDate, payDescription, status, yearId, extraInfo);

  /// Create a copy of SalePointPayment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalePointPaymentImplCopyWith<_$SalePointPaymentImpl> get copyWith =>
      __$$SalePointPaymentImplCopyWithImpl<_$SalePointPaymentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalePointPaymentImplToJson(
      this,
    );
  }
}

abstract class _SalePointPayment implements SalePointPayment {
  const factory _SalePointPayment(
      {required final int id,
      required final int salPointId,
      required final int orderId,
      required final int inAmt,
      required final int outAmt,
      required final DateTime payDate,
      required final int payDescription,
      required final int status,
      required final int yearId,
      required final String extraInfo}) = _$SalePointPaymentImpl;

  factory _SalePointPayment.fromJson(Map<String, dynamic> json) =
      _$SalePointPaymentImpl.fromJson;

  @override
  int get id;
  @override
  int get salPointId;
  @override
  int get orderId; //
  @override
  int get inAmt;
  @override
  int get outAmt; //
  @override
  DateTime get payDate;
  @override
  int get payDescription;
  @override
  int get status; //
  @override
  int get yearId; //
  @override
  String get extraInfo;

  /// Create a copy of SalePointPayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalePointPaymentImplCopyWith<_$SalePointPaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
