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

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return _Payment.fromJson(json);
}

/// @nodoc
mixin _$Payment {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'in_amt')
  double get inAmt => throw _privateConstructorUsedError;
  @JsonKey(name: 'out_amt')
  double get outAmt => throw _privateConstructorUsedError;
  @JsonKey(name: 'hdr_id')
  int get hdrId => throw _privateConstructorUsedError;
  @JsonKey(name: 'point_id')
  int get salPointId => throw _privateConstructorUsedError;
  @JsonKey(name: 'extra_info')
  String get extraInfo => throw _privateConstructorUsedError; //
  @JsonKey(name: 'is_active')
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'pay_date')
  DateTime get payDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'pay_description')
  String get payDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'year_id')
  int get yearID => throw _privateConstructorUsedError; //
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  int get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated_at')
  DateTime? get lastUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated_by')
  int get lastUpdatedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'update_counts')
  int get updatedCount => throw _privateConstructorUsedError;

  /// Serializes this Payment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res, Payment>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'in_amt') double inAmt,
      @JsonKey(name: 'out_amt') double outAmt,
      @JsonKey(name: 'hdr_id') int hdrId,
      @JsonKey(name: 'point_id') int salPointId,
      @JsonKey(name: 'extra_info') String extraInfo,
      @JsonKey(name: 'is_active') bool status,
      @JsonKey(name: 'pay_date') DateTime payDate,
      @JsonKey(name: 'pay_description') String payDescription,
      @JsonKey(name: 'year_id') int yearID,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'created_by') int createdBy,
      @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt,
      @JsonKey(name: 'last_updated_by') int lastUpdatedBy,
      @JsonKey(name: 'update_counts') int updatedCount});
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res, $Val extends Payment>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? inAmt = null,
    Object? outAmt = null,
    Object? hdrId = null,
    Object? salPointId = null,
    Object? extraInfo = null,
    Object? status = null,
    Object? payDate = null,
    Object? payDescription = null,
    Object? yearID = null,
    Object? createdAt = null,
    Object? createdBy = null,
    Object? lastUpdatedAt = freezed,
    Object? lastUpdatedBy = null,
    Object? updatedCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      inAmt: null == inAmt
          ? _value.inAmt
          : inAmt // ignore: cast_nullable_to_non_nullable
              as double,
      outAmt: null == outAmt
          ? _value.outAmt
          : outAmt // ignore: cast_nullable_to_non_nullable
              as double,
      hdrId: null == hdrId
          ? _value.hdrId
          : hdrId // ignore: cast_nullable_to_non_nullable
              as int,
      salPointId: null == salPointId
          ? _value.salPointId
          : salPointId // ignore: cast_nullable_to_non_nullable
              as int,
      extraInfo: null == extraInfo
          ? _value.extraInfo
          : extraInfo // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      payDate: null == payDate
          ? _value.payDate
          : payDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      payDescription: null == payDescription
          ? _value.payDescription
          : payDescription // ignore: cast_nullable_to_non_nullable
              as String,
      yearID: null == yearID
          ? _value.yearID
          : yearID // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdatedAt: freezed == lastUpdatedAt
          ? _value.lastUpdatedAt
          : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdatedBy: null == lastUpdatedBy
          ? _value.lastUpdatedBy
          : lastUpdatedBy // ignore: cast_nullable_to_non_nullable
              as int,
      updatedCount: null == updatedCount
          ? _value.updatedCount
          : updatedCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentImplCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$$PaymentImplCopyWith(
          _$PaymentImpl value, $Res Function(_$PaymentImpl) then) =
      __$$PaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'in_amt') double inAmt,
      @JsonKey(name: 'out_amt') double outAmt,
      @JsonKey(name: 'hdr_id') int hdrId,
      @JsonKey(name: 'point_id') int salPointId,
      @JsonKey(name: 'extra_info') String extraInfo,
      @JsonKey(name: 'is_active') bool status,
      @JsonKey(name: 'pay_date') DateTime payDate,
      @JsonKey(name: 'pay_description') String payDescription,
      @JsonKey(name: 'year_id') int yearID,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'created_by') int createdBy,
      @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt,
      @JsonKey(name: 'last_updated_by') int lastUpdatedBy,
      @JsonKey(name: 'update_counts') int updatedCount});
}

/// @nodoc
class __$$PaymentImplCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$PaymentImpl>
    implements _$$PaymentImplCopyWith<$Res> {
  __$$PaymentImplCopyWithImpl(
      _$PaymentImpl _value, $Res Function(_$PaymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? inAmt = null,
    Object? outAmt = null,
    Object? hdrId = null,
    Object? salPointId = null,
    Object? extraInfo = null,
    Object? status = null,
    Object? payDate = null,
    Object? payDescription = null,
    Object? yearID = null,
    Object? createdAt = null,
    Object? createdBy = null,
    Object? lastUpdatedAt = freezed,
    Object? lastUpdatedBy = null,
    Object? updatedCount = null,
  }) {
    return _then(_$PaymentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      inAmt: null == inAmt
          ? _value.inAmt
          : inAmt // ignore: cast_nullable_to_non_nullable
              as double,
      outAmt: null == outAmt
          ? _value.outAmt
          : outAmt // ignore: cast_nullable_to_non_nullable
              as double,
      hdrId: null == hdrId
          ? _value.hdrId
          : hdrId // ignore: cast_nullable_to_non_nullable
              as int,
      salPointId: null == salPointId
          ? _value.salPointId
          : salPointId // ignore: cast_nullable_to_non_nullable
              as int,
      extraInfo: null == extraInfo
          ? _value.extraInfo
          : extraInfo // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      payDate: null == payDate
          ? _value.payDate
          : payDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      payDescription: null == payDescription
          ? _value.payDescription
          : payDescription // ignore: cast_nullable_to_non_nullable
              as String,
      yearID: null == yearID
          ? _value.yearID
          : yearID // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdatedAt: freezed == lastUpdatedAt
          ? _value.lastUpdatedAt
          : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdatedBy: null == lastUpdatedBy
          ? _value.lastUpdatedBy
          : lastUpdatedBy // ignore: cast_nullable_to_non_nullable
              as int,
      updatedCount: null == updatedCount
          ? _value.updatedCount
          : updatedCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentImpl implements _Payment {
  const _$PaymentImpl(
      {required this.id,
      @JsonKey(name: 'in_amt') required this.inAmt,
      @JsonKey(name: 'out_amt') required this.outAmt,
      @JsonKey(name: 'hdr_id') required this.hdrId,
      @JsonKey(name: 'point_id') required this.salPointId,
      @JsonKey(name: 'extra_info') required this.extraInfo,
      @JsonKey(name: 'is_active') required this.status,
      @JsonKey(name: 'pay_date') required this.payDate,
      @JsonKey(name: 'pay_description') required this.payDescription,
      @JsonKey(name: 'year_id') required this.yearID,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'created_by') required this.createdBy,
      @JsonKey(name: 'last_updated_at') this.lastUpdatedAt,
      @JsonKey(name: 'last_updated_by') required this.lastUpdatedBy,
      @JsonKey(name: 'update_counts') required this.updatedCount});

  factory _$PaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'in_amt')
  final double inAmt;
  @override
  @JsonKey(name: 'out_amt')
  final double outAmt;
  @override
  @JsonKey(name: 'hdr_id')
  final int hdrId;
  @override
  @JsonKey(name: 'point_id')
  final int salPointId;
  @override
  @JsonKey(name: 'extra_info')
  final String extraInfo;
//
  @override
  @JsonKey(name: 'is_active')
  final bool status;
  @override
  @JsonKey(name: 'pay_date')
  final DateTime payDate;
  @override
  @JsonKey(name: 'pay_description')
  final String payDescription;
  @override
  @JsonKey(name: 'year_id')
  final int yearID;
//
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'created_by')
  final int createdBy;
  @override
  @JsonKey(name: 'last_updated_at')
  final DateTime? lastUpdatedAt;
  @override
  @JsonKey(name: 'last_updated_by')
  final int lastUpdatedBy;
  @override
  @JsonKey(name: 'update_counts')
  final int updatedCount;

  @override
  String toString() {
    return 'Payment(id: $id, inAmt: $inAmt, outAmt: $outAmt, hdrId: $hdrId, salPointId: $salPointId, extraInfo: $extraInfo, status: $status, payDate: $payDate, payDescription: $payDescription, yearID: $yearID, createdAt: $createdAt, createdBy: $createdBy, lastUpdatedAt: $lastUpdatedAt, lastUpdatedBy: $lastUpdatedBy, updatedCount: $updatedCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.inAmt, inAmt) || other.inAmt == inAmt) &&
            (identical(other.outAmt, outAmt) || other.outAmt == outAmt) &&
            (identical(other.hdrId, hdrId) || other.hdrId == hdrId) &&
            (identical(other.salPointId, salPointId) ||
                other.salPointId == salPointId) &&
            (identical(other.extraInfo, extraInfo) ||
                other.extraInfo == extraInfo) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.payDate, payDate) || other.payDate == payDate) &&
            (identical(other.payDescription, payDescription) ||
                other.payDescription == payDescription) &&
            (identical(other.yearID, yearID) || other.yearID == yearID) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.lastUpdatedAt, lastUpdatedAt) ||
                other.lastUpdatedAt == lastUpdatedAt) &&
            (identical(other.lastUpdatedBy, lastUpdatedBy) ||
                other.lastUpdatedBy == lastUpdatedBy) &&
            (identical(other.updatedCount, updatedCount) ||
                other.updatedCount == updatedCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      inAmt,
      outAmt,
      hdrId,
      salPointId,
      extraInfo,
      status,
      payDate,
      payDescription,
      yearID,
      createdAt,
      createdBy,
      lastUpdatedAt,
      lastUpdatedBy,
      updatedCount);

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      __$$PaymentImplCopyWithImpl<_$PaymentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentImplToJson(
      this,
    );
  }
}

abstract class _Payment implements Payment {
  const factory _Payment(
      {required final int id,
      @JsonKey(name: 'in_amt') required final double inAmt,
      @JsonKey(name: 'out_amt') required final double outAmt,
      @JsonKey(name: 'hdr_id') required final int hdrId,
      @JsonKey(name: 'point_id') required final int salPointId,
      @JsonKey(name: 'extra_info') required final String extraInfo,
      @JsonKey(name: 'is_active') required final bool status,
      @JsonKey(name: 'pay_date') required final DateTime payDate,
      @JsonKey(name: 'pay_description') required final String payDescription,
      @JsonKey(name: 'year_id') required final int yearID,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'created_by') required final int createdBy,
      @JsonKey(name: 'last_updated_at') final DateTime? lastUpdatedAt,
      @JsonKey(name: 'last_updated_by') required final int lastUpdatedBy,
      @JsonKey(name: 'update_counts')
      required final int updatedCount}) = _$PaymentImpl;

  factory _Payment.fromJson(Map<String, dynamic> json) = _$PaymentImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'in_amt')
  double get inAmt;
  @override
  @JsonKey(name: 'out_amt')
  double get outAmt;
  @override
  @JsonKey(name: 'hdr_id')
  int get hdrId;
  @override
  @JsonKey(name: 'point_id')
  int get salPointId;
  @override
  @JsonKey(name: 'extra_info')
  String get extraInfo; //
  @override
  @JsonKey(name: 'is_active')
  bool get status;
  @override
  @JsonKey(name: 'pay_date')
  DateTime get payDate;
  @override
  @JsonKey(name: 'pay_description')
  String get payDescription;
  @override
  @JsonKey(name: 'year_id')
  int get yearID; //
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'created_by')
  int get createdBy;
  @override
  @JsonKey(name: 'last_updated_at')
  DateTime? get lastUpdatedAt;
  @override
  @JsonKey(name: 'last_updated_by')
  int get lastUpdatedBy;
  @override
  @JsonKey(name: 'update_counts')
  int get updatedCount;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentData _$PaymentDataFromJson(Map<String, dynamic> json) {
  return _PaymentData.fromJson(json);
}

/// @nodoc
mixin _$PaymentData {
  @JsonKey(name: 'in_amt')
  double get inAmt => throw _privateConstructorUsedError; //
  @JsonKey(name: 'hdr_id')
  int get hdrId => throw _privateConstructorUsedError;
  @JsonKey(name: 'point_id')
  int get salPointId => throw _privateConstructorUsedError;
  @JsonKey(name: 'extra_info')
  String get extraInfo => throw _privateConstructorUsedError; //
  @JsonKey(name: 'is_active')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'pay_date')
  DateTime? get payDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'pay_description')
  String get payDescription => throw _privateConstructorUsedError;

  /// Serializes this PaymentData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentDataCopyWith<PaymentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDataCopyWith<$Res> {
  factory $PaymentDataCopyWith(
          PaymentData value, $Res Function(PaymentData) then) =
      _$PaymentDataCopyWithImpl<$Res, PaymentData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'in_amt') double inAmt,
      @JsonKey(name: 'hdr_id') int hdrId,
      @JsonKey(name: 'point_id') int salPointId,
      @JsonKey(name: 'extra_info') String extraInfo,
      @JsonKey(name: 'is_active') bool? status,
      @JsonKey(name: 'pay_date') DateTime? payDate,
      @JsonKey(name: 'pay_description') String payDescription});
}

/// @nodoc
class _$PaymentDataCopyWithImpl<$Res, $Val extends PaymentData>
    implements $PaymentDataCopyWith<$Res> {
  _$PaymentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inAmt = null,
    Object? hdrId = null,
    Object? salPointId = null,
    Object? extraInfo = null,
    Object? status = freezed,
    Object? payDate = freezed,
    Object? payDescription = null,
  }) {
    return _then(_value.copyWith(
      inAmt: null == inAmt
          ? _value.inAmt
          : inAmt // ignore: cast_nullable_to_non_nullable
              as double,
      hdrId: null == hdrId
          ? _value.hdrId
          : hdrId // ignore: cast_nullable_to_non_nullable
              as int,
      salPointId: null == salPointId
          ? _value.salPointId
          : salPointId // ignore: cast_nullable_to_non_nullable
              as int,
      extraInfo: null == extraInfo
          ? _value.extraInfo
          : extraInfo // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      payDate: freezed == payDate
          ? _value.payDate
          : payDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      payDescription: null == payDescription
          ? _value.payDescription
          : payDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentDataImplCopyWith<$Res>
    implements $PaymentDataCopyWith<$Res> {
  factory _$$PaymentDataImplCopyWith(
          _$PaymentDataImpl value, $Res Function(_$PaymentDataImpl) then) =
      __$$PaymentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'in_amt') double inAmt,
      @JsonKey(name: 'hdr_id') int hdrId,
      @JsonKey(name: 'point_id') int salPointId,
      @JsonKey(name: 'extra_info') String extraInfo,
      @JsonKey(name: 'is_active') bool? status,
      @JsonKey(name: 'pay_date') DateTime? payDate,
      @JsonKey(name: 'pay_description') String payDescription});
}

/// @nodoc
class __$$PaymentDataImplCopyWithImpl<$Res>
    extends _$PaymentDataCopyWithImpl<$Res, _$PaymentDataImpl>
    implements _$$PaymentDataImplCopyWith<$Res> {
  __$$PaymentDataImplCopyWithImpl(
      _$PaymentDataImpl _value, $Res Function(_$PaymentDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inAmt = null,
    Object? hdrId = null,
    Object? salPointId = null,
    Object? extraInfo = null,
    Object? status = freezed,
    Object? payDate = freezed,
    Object? payDescription = null,
  }) {
    return _then(_$PaymentDataImpl(
      inAmt: null == inAmt
          ? _value.inAmt
          : inAmt // ignore: cast_nullable_to_non_nullable
              as double,
      hdrId: null == hdrId
          ? _value.hdrId
          : hdrId // ignore: cast_nullable_to_non_nullable
              as int,
      salPointId: null == salPointId
          ? _value.salPointId
          : salPointId // ignore: cast_nullable_to_non_nullable
              as int,
      extraInfo: null == extraInfo
          ? _value.extraInfo
          : extraInfo // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      payDate: freezed == payDate
          ? _value.payDate
          : payDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      payDescription: null == payDescription
          ? _value.payDescription
          : payDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentDataImpl implements _PaymentData {
  const _$PaymentDataImpl(
      {@JsonKey(name: 'in_amt') required this.inAmt,
      @JsonKey(name: 'hdr_id') required this.hdrId,
      @JsonKey(name: 'point_id') required this.salPointId,
      @JsonKey(name: 'extra_info') required this.extraInfo,
      @JsonKey(name: 'is_active') this.status,
      @JsonKey(name: 'pay_date') this.payDate,
      @JsonKey(name: 'pay_description') this.payDescription = ''});

  factory _$PaymentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentDataImplFromJson(json);

  @override
  @JsonKey(name: 'in_amt')
  final double inAmt;
//
  @override
  @JsonKey(name: 'hdr_id')
  final int hdrId;
  @override
  @JsonKey(name: 'point_id')
  final int salPointId;
  @override
  @JsonKey(name: 'extra_info')
  final String extraInfo;
//
  @override
  @JsonKey(name: 'is_active')
  final bool? status;
  @override
  @JsonKey(name: 'pay_date')
  final DateTime? payDate;
  @override
  @JsonKey(name: 'pay_description')
  final String payDescription;

  @override
  String toString() {
    return 'PaymentData(inAmt: $inAmt, hdrId: $hdrId, salPointId: $salPointId, extraInfo: $extraInfo, status: $status, payDate: $payDate, payDescription: $payDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentDataImpl &&
            (identical(other.inAmt, inAmt) || other.inAmt == inAmt) &&
            (identical(other.hdrId, hdrId) || other.hdrId == hdrId) &&
            (identical(other.salPointId, salPointId) ||
                other.salPointId == salPointId) &&
            (identical(other.extraInfo, extraInfo) ||
                other.extraInfo == extraInfo) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.payDate, payDate) || other.payDate == payDate) &&
            (identical(other.payDescription, payDescription) ||
                other.payDescription == payDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, inAmt, hdrId, salPointId,
      extraInfo, status, payDate, payDescription);

  /// Create a copy of PaymentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentDataImplCopyWith<_$PaymentDataImpl> get copyWith =>
      __$$PaymentDataImplCopyWithImpl<_$PaymentDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentDataImplToJson(
      this,
    );
  }
}

abstract class _PaymentData implements PaymentData {
  const factory _PaymentData(
          {@JsonKey(name: 'in_amt') required final double inAmt,
          @JsonKey(name: 'hdr_id') required final int hdrId,
          @JsonKey(name: 'point_id') required final int salPointId,
          @JsonKey(name: 'extra_info') required final String extraInfo,
          @JsonKey(name: 'is_active') final bool? status,
          @JsonKey(name: 'pay_date') final DateTime? payDate,
          @JsonKey(name: 'pay_description') final String payDescription}) =
      _$PaymentDataImpl;

  factory _PaymentData.fromJson(Map<String, dynamic> json) =
      _$PaymentDataImpl.fromJson;

  @override
  @JsonKey(name: 'in_amt')
  double get inAmt; //
  @override
  @JsonKey(name: 'hdr_id')
  int get hdrId;
  @override
  @JsonKey(name: 'point_id')
  int get salPointId;
  @override
  @JsonKey(name: 'extra_info')
  String get extraInfo; //
  @override
  @JsonKey(name: 'is_active')
  bool? get status;
  @override
  @JsonKey(name: 'pay_date')
  DateTime? get payDate;
  @override
  @JsonKey(name: 'pay_description')
  String get payDescription;

  /// Create a copy of PaymentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentDataImplCopyWith<_$PaymentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
