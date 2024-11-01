// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SalesOrderDtl _$SalesOrderDtlFromJson(Map<String, dynamic> json) {
  return _SalesOrderDtl.fromJson(json);
}

/// @nodoc
mixin _$SalesOrderDtl {
  int get id => throw _privateConstructorUsedError;
  int get orderId => throw _privateConstructorUsedError;
  int get cardId => throw _privateConstructorUsedError;
  int get inQty => throw _privateConstructorUsedError;
  int get outQty => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError; //
  double get cardPrice => throw _privateConstructorUsedError; //
  bool get isFree => throw _privateConstructorUsedError;
  bool get isRejected => throw _privateConstructorUsedError;
  bool get isOutDated => throw _privateConstructorUsedError; //
//
  DateTime get createdOn => throw _privateConstructorUsedError;
  int get createdBy => throw _privateConstructorUsedError;
  DateTime get lastupdatedOn => throw _privateConstructorUsedError;
  int get lastupdatedBy => throw _privateConstructorUsedError;
  int get updatedCount => throw _privateConstructorUsedError;

  /// Serializes this SalesOrderDtl to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SalesOrderDtl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalesOrderDtlCopyWith<SalesOrderDtl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesOrderDtlCopyWith<$Res> {
  factory $SalesOrderDtlCopyWith(
          SalesOrderDtl value, $Res Function(SalesOrderDtl) then) =
      _$SalesOrderDtlCopyWithImpl<$Res, SalesOrderDtl>;
  @useResult
  $Res call(
      {int id,
      int orderId,
      int cardId,
      int inQty,
      int outQty,
      int status,
      double cardPrice,
      bool isFree,
      bool isRejected,
      bool isOutDated,
      DateTime createdOn,
      int createdBy,
      DateTime lastupdatedOn,
      int lastupdatedBy,
      int updatedCount});
}

/// @nodoc
class _$SalesOrderDtlCopyWithImpl<$Res, $Val extends SalesOrderDtl>
    implements $SalesOrderDtlCopyWith<$Res> {
  _$SalesOrderDtlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalesOrderDtl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? cardId = null,
    Object? inQty = null,
    Object? outQty = null,
    Object? status = null,
    Object? cardPrice = null,
    Object? isFree = null,
    Object? isRejected = null,
    Object? isOutDated = null,
    Object? createdOn = null,
    Object? createdBy = null,
    Object? lastupdatedOn = null,
    Object? lastupdatedBy = null,
    Object? updatedCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      inQty: null == inQty
          ? _value.inQty
          : inQty // ignore: cast_nullable_to_non_nullable
              as int,
      outQty: null == outQty
          ? _value.outQty
          : outQty // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      cardPrice: null == cardPrice
          ? _value.cardPrice
          : cardPrice // ignore: cast_nullable_to_non_nullable
              as double,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isRejected: null == isRejected
          ? _value.isRejected
          : isRejected // ignore: cast_nullable_to_non_nullable
              as bool,
      isOutDated: null == isOutDated
          ? _value.isOutDated
          : isOutDated // ignore: cast_nullable_to_non_nullable
              as bool,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
      lastupdatedOn: null == lastupdatedOn
          ? _value.lastupdatedOn
          : lastupdatedOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastupdatedBy: null == lastupdatedBy
          ? _value.lastupdatedBy
          : lastupdatedBy // ignore: cast_nullable_to_non_nullable
              as int,
      updatedCount: null == updatedCount
          ? _value.updatedCount
          : updatedCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalesOrderDtlImplCopyWith<$Res>
    implements $SalesOrderDtlCopyWith<$Res> {
  factory _$$SalesOrderDtlImplCopyWith(
          _$SalesOrderDtlImpl value, $Res Function(_$SalesOrderDtlImpl) then) =
      __$$SalesOrderDtlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int orderId,
      int cardId,
      int inQty,
      int outQty,
      int status,
      double cardPrice,
      bool isFree,
      bool isRejected,
      bool isOutDated,
      DateTime createdOn,
      int createdBy,
      DateTime lastupdatedOn,
      int lastupdatedBy,
      int updatedCount});
}

/// @nodoc
class __$$SalesOrderDtlImplCopyWithImpl<$Res>
    extends _$SalesOrderDtlCopyWithImpl<$Res, _$SalesOrderDtlImpl>
    implements _$$SalesOrderDtlImplCopyWith<$Res> {
  __$$SalesOrderDtlImplCopyWithImpl(
      _$SalesOrderDtlImpl _value, $Res Function(_$SalesOrderDtlImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesOrderDtl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? cardId = null,
    Object? inQty = null,
    Object? outQty = null,
    Object? status = null,
    Object? cardPrice = null,
    Object? isFree = null,
    Object? isRejected = null,
    Object? isOutDated = null,
    Object? createdOn = null,
    Object? createdBy = null,
    Object? lastupdatedOn = null,
    Object? lastupdatedBy = null,
    Object? updatedCount = null,
  }) {
    return _then(_$SalesOrderDtlImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      inQty: null == inQty
          ? _value.inQty
          : inQty // ignore: cast_nullable_to_non_nullable
              as int,
      outQty: null == outQty
          ? _value.outQty
          : outQty // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      cardPrice: null == cardPrice
          ? _value.cardPrice
          : cardPrice // ignore: cast_nullable_to_non_nullable
              as double,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isRejected: null == isRejected
          ? _value.isRejected
          : isRejected // ignore: cast_nullable_to_non_nullable
              as bool,
      isOutDated: null == isOutDated
          ? _value.isOutDated
          : isOutDated // ignore: cast_nullable_to_non_nullable
              as bool,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
      lastupdatedOn: null == lastupdatedOn
          ? _value.lastupdatedOn
          : lastupdatedOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastupdatedBy: null == lastupdatedBy
          ? _value.lastupdatedBy
          : lastupdatedBy // ignore: cast_nullable_to_non_nullable
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
class _$SalesOrderDtlImpl implements _SalesOrderDtl {
  const _$SalesOrderDtlImpl(
      {required this.id,
      required this.orderId,
      required this.cardId,
      required this.inQty,
      required this.outQty,
      required this.status,
      required this.cardPrice,
      required this.isFree,
      required this.isRejected,
      required this.isOutDated,
      required this.createdOn,
      required this.createdBy,
      required this.lastupdatedOn,
      required this.lastupdatedBy,
      required this.updatedCount});

  factory _$SalesOrderDtlImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesOrderDtlImplFromJson(json);

  @override
  final int id;
  @override
  final int orderId;
  @override
  final int cardId;
  @override
  final int inQty;
  @override
  final int outQty;
  @override
  final int status;
//
  @override
  final double cardPrice;
//
  @override
  final bool isFree;
  @override
  final bool isRejected;
  @override
  final bool isOutDated;
//
//
  @override
  final DateTime createdOn;
  @override
  final int createdBy;
  @override
  final DateTime lastupdatedOn;
  @override
  final int lastupdatedBy;
  @override
  final int updatedCount;

  @override
  String toString() {
    return 'SalesOrderDtl(id: $id, orderId: $orderId, cardId: $cardId, inQty: $inQty, outQty: $outQty, status: $status, cardPrice: $cardPrice, isFree: $isFree, isRejected: $isRejected, isOutDated: $isOutDated, createdOn: $createdOn, createdBy: $createdBy, lastupdatedOn: $lastupdatedOn, lastupdatedBy: $lastupdatedBy, updatedCount: $updatedCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesOrderDtlImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.cardId, cardId) || other.cardId == cardId) &&
            (identical(other.inQty, inQty) || other.inQty == inQty) &&
            (identical(other.outQty, outQty) || other.outQty == outQty) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cardPrice, cardPrice) ||
                other.cardPrice == cardPrice) &&
            (identical(other.isFree, isFree) || other.isFree == isFree) &&
            (identical(other.isRejected, isRejected) ||
                other.isRejected == isRejected) &&
            (identical(other.isOutDated, isOutDated) ||
                other.isOutDated == isOutDated) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.lastupdatedOn, lastupdatedOn) ||
                other.lastupdatedOn == lastupdatedOn) &&
            (identical(other.lastupdatedBy, lastupdatedBy) ||
                other.lastupdatedBy == lastupdatedBy) &&
            (identical(other.updatedCount, updatedCount) ||
                other.updatedCount == updatedCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      orderId,
      cardId,
      inQty,
      outQty,
      status,
      cardPrice,
      isFree,
      isRejected,
      isOutDated,
      createdOn,
      createdBy,
      lastupdatedOn,
      lastupdatedBy,
      updatedCount);

  /// Create a copy of SalesOrderDtl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesOrderDtlImplCopyWith<_$SalesOrderDtlImpl> get copyWith =>
      __$$SalesOrderDtlImplCopyWithImpl<_$SalesOrderDtlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesOrderDtlImplToJson(
      this,
    );
  }
}

abstract class _SalesOrderDtl implements SalesOrderDtl {
  const factory _SalesOrderDtl(
      {required final int id,
      required final int orderId,
      required final int cardId,
      required final int inQty,
      required final int outQty,
      required final int status,
      required final double cardPrice,
      required final bool isFree,
      required final bool isRejected,
      required final bool isOutDated,
      required final DateTime createdOn,
      required final int createdBy,
      required final DateTime lastupdatedOn,
      required final int lastupdatedBy,
      required final int updatedCount}) = _$SalesOrderDtlImpl;

  factory _SalesOrderDtl.fromJson(Map<String, dynamic> json) =
      _$SalesOrderDtlImpl.fromJson;

  @override
  int get id;
  @override
  int get orderId;
  @override
  int get cardId;
  @override
  int get inQty;
  @override
  int get outQty;
  @override
  int get status; //
  @override
  double get cardPrice; //
  @override
  bool get isFree;
  @override
  bool get isRejected;
  @override
  bool get isOutDated; //
//
  @override
  DateTime get createdOn;
  @override
  int get createdBy;
  @override
  DateTime get lastupdatedOn;
  @override
  int get lastupdatedBy;
  @override
  int get updatedCount;

  /// Create a copy of SalesOrderDtl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalesOrderDtlImplCopyWith<_$SalesOrderDtlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
