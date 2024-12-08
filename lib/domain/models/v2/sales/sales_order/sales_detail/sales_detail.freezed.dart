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
  String get description => throw _privateConstructorUsedError; //
  @JsonKey(name: 'is_active')
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'rec_ser')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'hdr_id')
  int get hdrId => throw _privateConstructorUsedError;
  @JsonKey(name: 'card_id')
  int get cardId => throw _privateConstructorUsedError;
  @JsonKey(name: 'card_price')
  double get cardPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'in_qty')
  int get inQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'out_qty')
  int get outQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'year_id')
  int get yearID => throw _privateConstructorUsedError; //
  @JsonKey(name: 'is_aproved')
  bool get isApproved => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_free')
  bool get isFree => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_rejected')
  bool get isRejected => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_valid')
  bool get isValid => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_out_dated')
  bool get isOutDated => throw _privateConstructorUsedError; //
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
      {String description,
      @JsonKey(name: 'is_active') bool status,
      @JsonKey(name: 'rec_ser') int id,
      @JsonKey(name: 'hdr_id') int hdrId,
      @JsonKey(name: 'card_id') int cardId,
      @JsonKey(name: 'card_price') double cardPrice,
      @JsonKey(name: 'in_qty') int inQty,
      @JsonKey(name: 'out_qty') int outQty,
      @JsonKey(name: 'year_id') int yearID,
      @JsonKey(name: 'is_aproved') bool isApproved,
      @JsonKey(name: 'is_free') bool isFree,
      @JsonKey(name: 'is_rejected') bool isRejected,
      @JsonKey(name: 'is_valid') bool isValid,
      @JsonKey(name: 'is_out_dated') bool isOutDated,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'created_by') int createdBy,
      @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt,
      @JsonKey(name: 'last_updated_by') int lastUpdatedBy,
      @JsonKey(name: 'update_counts') int updatedCount});
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
    Object? description = null,
    Object? status = null,
    Object? id = null,
    Object? hdrId = null,
    Object? cardId = null,
    Object? cardPrice = null,
    Object? inQty = null,
    Object? outQty = null,
    Object? yearID = null,
    Object? isApproved = null,
    Object? isFree = null,
    Object? isRejected = null,
    Object? isValid = null,
    Object? isOutDated = null,
    Object? createdAt = null,
    Object? createdBy = null,
    Object? lastUpdatedAt = freezed,
    Object? lastUpdatedBy = null,
    Object? updatedCount = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hdrId: null == hdrId
          ? _value.hdrId
          : hdrId // ignore: cast_nullable_to_non_nullable
              as int,
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      cardPrice: null == cardPrice
          ? _value.cardPrice
          : cardPrice // ignore: cast_nullable_to_non_nullable
              as double,
      inQty: null == inQty
          ? _value.inQty
          : inQty // ignore: cast_nullable_to_non_nullable
              as int,
      outQty: null == outQty
          ? _value.outQty
          : outQty // ignore: cast_nullable_to_non_nullable
              as int,
      yearID: null == yearID
          ? _value.yearID
          : yearID // ignore: cast_nullable_to_non_nullable
              as int,
      isApproved: null == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isRejected: null == isRejected
          ? _value.isRejected
          : isRejected // ignore: cast_nullable_to_non_nullable
              as bool,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isOutDated: null == isOutDated
          ? _value.isOutDated
          : isOutDated // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$SalesOrderDtlImplCopyWith<$Res>
    implements $SalesOrderDtlCopyWith<$Res> {
  factory _$$SalesOrderDtlImplCopyWith(
          _$SalesOrderDtlImpl value, $Res Function(_$SalesOrderDtlImpl) then) =
      __$$SalesOrderDtlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      @JsonKey(name: 'is_active') bool status,
      @JsonKey(name: 'rec_ser') int id,
      @JsonKey(name: 'hdr_id') int hdrId,
      @JsonKey(name: 'card_id') int cardId,
      @JsonKey(name: 'card_price') double cardPrice,
      @JsonKey(name: 'in_qty') int inQty,
      @JsonKey(name: 'out_qty') int outQty,
      @JsonKey(name: 'year_id') int yearID,
      @JsonKey(name: 'is_aproved') bool isApproved,
      @JsonKey(name: 'is_free') bool isFree,
      @JsonKey(name: 'is_rejected') bool isRejected,
      @JsonKey(name: 'is_valid') bool isValid,
      @JsonKey(name: 'is_out_dated') bool isOutDated,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'created_by') int createdBy,
      @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt,
      @JsonKey(name: 'last_updated_by') int lastUpdatedBy,
      @JsonKey(name: 'update_counts') int updatedCount});
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
    Object? description = null,
    Object? status = null,
    Object? id = null,
    Object? hdrId = null,
    Object? cardId = null,
    Object? cardPrice = null,
    Object? inQty = null,
    Object? outQty = null,
    Object? yearID = null,
    Object? isApproved = null,
    Object? isFree = null,
    Object? isRejected = null,
    Object? isValid = null,
    Object? isOutDated = null,
    Object? createdAt = null,
    Object? createdBy = null,
    Object? lastUpdatedAt = freezed,
    Object? lastUpdatedBy = null,
    Object? updatedCount = null,
  }) {
    return _then(_$SalesOrderDtlImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hdrId: null == hdrId
          ? _value.hdrId
          : hdrId // ignore: cast_nullable_to_non_nullable
              as int,
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      cardPrice: null == cardPrice
          ? _value.cardPrice
          : cardPrice // ignore: cast_nullable_to_non_nullable
              as double,
      inQty: null == inQty
          ? _value.inQty
          : inQty // ignore: cast_nullable_to_non_nullable
              as int,
      outQty: null == outQty
          ? _value.outQty
          : outQty // ignore: cast_nullable_to_non_nullable
              as int,
      yearID: null == yearID
          ? _value.yearID
          : yearID // ignore: cast_nullable_to_non_nullable
              as int,
      isApproved: null == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isRejected: null == isRejected
          ? _value.isRejected
          : isRejected // ignore: cast_nullable_to_non_nullable
              as bool,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isOutDated: null == isOutDated
          ? _value.isOutDated
          : isOutDated // ignore: cast_nullable_to_non_nullable
              as bool,
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

@JsonSerializable(explicitToJson: true)
class _$SalesOrderDtlImpl implements _SalesOrderDtl {
  const _$SalesOrderDtlImpl(
      {required this.description,
      @JsonKey(name: 'is_active') required this.status,
      @JsonKey(name: 'rec_ser') required this.id,
      @JsonKey(name: 'hdr_id') required this.hdrId,
      @JsonKey(name: 'card_id') required this.cardId,
      @JsonKey(name: 'card_price') required this.cardPrice,
      @JsonKey(name: 'in_qty') required this.inQty,
      @JsonKey(name: 'out_qty') required this.outQty,
      @JsonKey(name: 'year_id') required this.yearID,
      @JsonKey(name: 'is_aproved') required this.isApproved,
      @JsonKey(name: 'is_free') required this.isFree,
      @JsonKey(name: 'is_rejected') required this.isRejected,
      @JsonKey(name: 'is_valid') required this.isValid,
      @JsonKey(name: 'is_out_dated') required this.isOutDated,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'created_by') required this.createdBy,
      @JsonKey(name: 'last_updated_at') this.lastUpdatedAt,
      @JsonKey(name: 'last_updated_by') required this.lastUpdatedBy,
      @JsonKey(name: 'update_counts') required this.updatedCount});

  factory _$SalesOrderDtlImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesOrderDtlImplFromJson(json);

  @override
  final String description;
//
  @override
  @JsonKey(name: 'is_active')
  final bool status;
  @override
  @JsonKey(name: 'rec_ser')
  final int id;
  @override
  @JsonKey(name: 'hdr_id')
  final int hdrId;
  @override
  @JsonKey(name: 'card_id')
  final int cardId;
  @override
  @JsonKey(name: 'card_price')
  final double cardPrice;
  @override
  @JsonKey(name: 'in_qty')
  final int inQty;
  @override
  @JsonKey(name: 'out_qty')
  final int outQty;
  @override
  @JsonKey(name: 'year_id')
  final int yearID;
//
  @override
  @JsonKey(name: 'is_aproved')
  final bool isApproved;
  @override
  @JsonKey(name: 'is_free')
  final bool isFree;
  @override
  @JsonKey(name: 'is_rejected')
  final bool isRejected;
  @override
  @JsonKey(name: 'is_valid')
  final bool isValid;
  @override
  @JsonKey(name: 'is_out_dated')
  final bool isOutDated;
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
    return 'SalesOrderDtl(description: $description, status: $status, id: $id, hdrId: $hdrId, cardId: $cardId, cardPrice: $cardPrice, inQty: $inQty, outQty: $outQty, yearID: $yearID, isApproved: $isApproved, isFree: $isFree, isRejected: $isRejected, isValid: $isValid, isOutDated: $isOutDated, createdAt: $createdAt, createdBy: $createdBy, lastUpdatedAt: $lastUpdatedAt, lastUpdatedBy: $lastUpdatedBy, updatedCount: $updatedCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesOrderDtlImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hdrId, hdrId) || other.hdrId == hdrId) &&
            (identical(other.cardId, cardId) || other.cardId == cardId) &&
            (identical(other.cardPrice, cardPrice) ||
                other.cardPrice == cardPrice) &&
            (identical(other.inQty, inQty) || other.inQty == inQty) &&
            (identical(other.outQty, outQty) || other.outQty == outQty) &&
            (identical(other.yearID, yearID) || other.yearID == yearID) &&
            (identical(other.isApproved, isApproved) ||
                other.isApproved == isApproved) &&
            (identical(other.isFree, isFree) || other.isFree == isFree) &&
            (identical(other.isRejected, isRejected) ||
                other.isRejected == isRejected) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.isOutDated, isOutDated) ||
                other.isOutDated == isOutDated) &&
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
  int get hashCode => Object.hashAll([
        runtimeType,
        description,
        status,
        id,
        hdrId,
        cardId,
        cardPrice,
        inQty,
        outQty,
        yearID,
        isApproved,
        isFree,
        isRejected,
        isValid,
        isOutDated,
        createdAt,
        createdBy,
        lastUpdatedAt,
        lastUpdatedBy,
        updatedCount
      ]);

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
          {required final String description,
          @JsonKey(name: 'is_active') required final bool status,
          @JsonKey(name: 'rec_ser') required final int id,
          @JsonKey(name: 'hdr_id') required final int hdrId,
          @JsonKey(name: 'card_id') required final int cardId,
          @JsonKey(name: 'card_price') required final double cardPrice,
          @JsonKey(name: 'in_qty') required final int inQty,
          @JsonKey(name: 'out_qty') required final int outQty,
          @JsonKey(name: 'year_id') required final int yearID,
          @JsonKey(name: 'is_aproved') required final bool isApproved,
          @JsonKey(name: 'is_free') required final bool isFree,
          @JsonKey(name: 'is_rejected') required final bool isRejected,
          @JsonKey(name: 'is_valid') required final bool isValid,
          @JsonKey(name: 'is_out_dated') required final bool isOutDated,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'created_by') required final int createdBy,
          @JsonKey(name: 'last_updated_at') final DateTime? lastUpdatedAt,
          @JsonKey(name: 'last_updated_by') required final int lastUpdatedBy,
          @JsonKey(name: 'update_counts') required final int updatedCount}) =
      _$SalesOrderDtlImpl;

  factory _SalesOrderDtl.fromJson(Map<String, dynamic> json) =
      _$SalesOrderDtlImpl.fromJson;

  @override
  String get description; //
  @override
  @JsonKey(name: 'is_active')
  bool get status;
  @override
  @JsonKey(name: 'rec_ser')
  int get id;
  @override
  @JsonKey(name: 'hdr_id')
  int get hdrId;
  @override
  @JsonKey(name: 'card_id')
  int get cardId;
  @override
  @JsonKey(name: 'card_price')
  double get cardPrice;
  @override
  @JsonKey(name: 'in_qty')
  int get inQty;
  @override
  @JsonKey(name: 'out_qty')
  int get outQty;
  @override
  @JsonKey(name: 'year_id')
  int get yearID; //
  @override
  @JsonKey(name: 'is_aproved')
  bool get isApproved;
  @override
  @JsonKey(name: 'is_free')
  bool get isFree;
  @override
  @JsonKey(name: 'is_rejected')
  bool get isRejected;
  @override
  @JsonKey(name: 'is_valid')
  bool get isValid;
  @override
  @JsonKey(name: 'is_out_dated')
  bool get isOutDated; //
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

  /// Create a copy of SalesOrderDtl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalesOrderDtlImplCopyWith<_$SalesOrderDtlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SlsOrdDtlData _$SlsOrdDtlDataFromJson(Map<String, dynamic> json) {
  return _SlsOrdDtlData.fromJson(json);
}

/// @nodoc
mixin _$SlsOrdDtlData {
  String? get description => throw _privateConstructorUsedError; //
  @JsonKey(name: 'is_active')
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'hdr_id')
  int get hdrId => throw _privateConstructorUsedError;
  @JsonKey(name: 'card_id')
  int get cardId => throw _privateConstructorUsedError;
  @JsonKey(name: 'in_qty')
  int? get inQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'out_qty')
  int get outQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'year_id')
  int? get yearID => throw _privateConstructorUsedError; //
  @JsonKey(name: 'is_free')
  bool? get isFree => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_rejected')
  bool? get isRejected => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_valid')
  bool? get isValid => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_out_dated')
  bool? get isOutDated => throw _privateConstructorUsedError;

  /// Serializes this SlsOrdDtlData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SlsOrdDtlData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SlsOrdDtlDataCopyWith<SlsOrdDtlData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlsOrdDtlDataCopyWith<$Res> {
  factory $SlsOrdDtlDataCopyWith(
          SlsOrdDtlData value, $Res Function(SlsOrdDtlData) then) =
      _$SlsOrdDtlDataCopyWithImpl<$Res, SlsOrdDtlData>;
  @useResult
  $Res call(
      {String? description,
      @JsonKey(name: 'is_active') bool status,
      @JsonKey(name: 'hdr_id') int hdrId,
      @JsonKey(name: 'card_id') int cardId,
      @JsonKey(name: 'in_qty') int? inQty,
      @JsonKey(name: 'out_qty') int outQty,
      @JsonKey(name: 'year_id') int? yearID,
      @JsonKey(name: 'is_free') bool? isFree,
      @JsonKey(name: 'is_rejected') bool? isRejected,
      @JsonKey(name: 'is_valid') bool? isValid,
      @JsonKey(name: 'is_out_dated') bool? isOutDated});
}

/// @nodoc
class _$SlsOrdDtlDataCopyWithImpl<$Res, $Val extends SlsOrdDtlData>
    implements $SlsOrdDtlDataCopyWith<$Res> {
  _$SlsOrdDtlDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SlsOrdDtlData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? status = null,
    Object? hdrId = null,
    Object? cardId = null,
    Object? inQty = freezed,
    Object? outQty = null,
    Object? yearID = freezed,
    Object? isFree = freezed,
    Object? isRejected = freezed,
    Object? isValid = freezed,
    Object? isOutDated = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      hdrId: null == hdrId
          ? _value.hdrId
          : hdrId // ignore: cast_nullable_to_non_nullable
              as int,
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      inQty: freezed == inQty
          ? _value.inQty
          : inQty // ignore: cast_nullable_to_non_nullable
              as int?,
      outQty: null == outQty
          ? _value.outQty
          : outQty // ignore: cast_nullable_to_non_nullable
              as int,
      yearID: freezed == yearID
          ? _value.yearID
          : yearID // ignore: cast_nullable_to_non_nullable
              as int?,
      isFree: freezed == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRejected: freezed == isRejected
          ? _value.isRejected
          : isRejected // ignore: cast_nullable_to_non_nullable
              as bool?,
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      isOutDated: freezed == isOutDated
          ? _value.isOutDated
          : isOutDated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SlsOrdDtlDataImplCopyWith<$Res>
    implements $SlsOrdDtlDataCopyWith<$Res> {
  factory _$$SlsOrdDtlDataImplCopyWith(
          _$SlsOrdDtlDataImpl value, $Res Function(_$SlsOrdDtlDataImpl) then) =
      __$$SlsOrdDtlDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? description,
      @JsonKey(name: 'is_active') bool status,
      @JsonKey(name: 'hdr_id') int hdrId,
      @JsonKey(name: 'card_id') int cardId,
      @JsonKey(name: 'in_qty') int? inQty,
      @JsonKey(name: 'out_qty') int outQty,
      @JsonKey(name: 'year_id') int? yearID,
      @JsonKey(name: 'is_free') bool? isFree,
      @JsonKey(name: 'is_rejected') bool? isRejected,
      @JsonKey(name: 'is_valid') bool? isValid,
      @JsonKey(name: 'is_out_dated') bool? isOutDated});
}

/// @nodoc
class __$$SlsOrdDtlDataImplCopyWithImpl<$Res>
    extends _$SlsOrdDtlDataCopyWithImpl<$Res, _$SlsOrdDtlDataImpl>
    implements _$$SlsOrdDtlDataImplCopyWith<$Res> {
  __$$SlsOrdDtlDataImplCopyWithImpl(
      _$SlsOrdDtlDataImpl _value, $Res Function(_$SlsOrdDtlDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SlsOrdDtlData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? status = null,
    Object? hdrId = null,
    Object? cardId = null,
    Object? inQty = freezed,
    Object? outQty = null,
    Object? yearID = freezed,
    Object? isFree = freezed,
    Object? isRejected = freezed,
    Object? isValid = freezed,
    Object? isOutDated = freezed,
  }) {
    return _then(_$SlsOrdDtlDataImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      hdrId: null == hdrId
          ? _value.hdrId
          : hdrId // ignore: cast_nullable_to_non_nullable
              as int,
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      inQty: freezed == inQty
          ? _value.inQty
          : inQty // ignore: cast_nullable_to_non_nullable
              as int?,
      outQty: null == outQty
          ? _value.outQty
          : outQty // ignore: cast_nullable_to_non_nullable
              as int,
      yearID: freezed == yearID
          ? _value.yearID
          : yearID // ignore: cast_nullable_to_non_nullable
              as int?,
      isFree: freezed == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRejected: freezed == isRejected
          ? _value.isRejected
          : isRejected // ignore: cast_nullable_to_non_nullable
              as bool?,
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      isOutDated: freezed == isOutDated
          ? _value.isOutDated
          : isOutDated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SlsOrdDtlDataImpl implements _SlsOrdDtlData {
  const _$SlsOrdDtlDataImpl(
      {this.description,
      @JsonKey(name: 'is_active') this.status = true,
      @JsonKey(name: 'hdr_id') required this.hdrId,
      @JsonKey(name: 'card_id') required this.cardId,
      @JsonKey(name: 'in_qty') this.inQty,
      @JsonKey(name: 'out_qty') required this.outQty,
      @JsonKey(name: 'year_id') this.yearID,
      @JsonKey(name: 'is_free') this.isFree,
      @JsonKey(name: 'is_rejected') this.isRejected,
      @JsonKey(name: 'is_valid') this.isValid,
      @JsonKey(name: 'is_out_dated') this.isOutDated});

  factory _$SlsOrdDtlDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SlsOrdDtlDataImplFromJson(json);

  @override
  final String? description;
//
  @override
  @JsonKey(name: 'is_active')
  final bool status;
  @override
  @JsonKey(name: 'hdr_id')
  final int hdrId;
  @override
  @JsonKey(name: 'card_id')
  final int cardId;
  @override
  @JsonKey(name: 'in_qty')
  final int? inQty;
  @override
  @JsonKey(name: 'out_qty')
  final int outQty;
  @override
  @JsonKey(name: 'year_id')
  final int? yearID;
//
  @override
  @JsonKey(name: 'is_free')
  final bool? isFree;
  @override
  @JsonKey(name: 'is_rejected')
  final bool? isRejected;
  @override
  @JsonKey(name: 'is_valid')
  final bool? isValid;
  @override
  @JsonKey(name: 'is_out_dated')
  final bool? isOutDated;

  @override
  String toString() {
    return 'SlsOrdDtlData(description: $description, status: $status, hdrId: $hdrId, cardId: $cardId, inQty: $inQty, outQty: $outQty, yearID: $yearID, isFree: $isFree, isRejected: $isRejected, isValid: $isValid, isOutDated: $isOutDated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlsOrdDtlDataImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.hdrId, hdrId) || other.hdrId == hdrId) &&
            (identical(other.cardId, cardId) || other.cardId == cardId) &&
            (identical(other.inQty, inQty) || other.inQty == inQty) &&
            (identical(other.outQty, outQty) || other.outQty == outQty) &&
            (identical(other.yearID, yearID) || other.yearID == yearID) &&
            (identical(other.isFree, isFree) || other.isFree == isFree) &&
            (identical(other.isRejected, isRejected) ||
                other.isRejected == isRejected) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.isOutDated, isOutDated) ||
                other.isOutDated == isOutDated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, description, status, hdrId,
      cardId, inQty, outQty, yearID, isFree, isRejected, isValid, isOutDated);

  /// Create a copy of SlsOrdDtlData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SlsOrdDtlDataImplCopyWith<_$SlsOrdDtlDataImpl> get copyWith =>
      __$$SlsOrdDtlDataImplCopyWithImpl<_$SlsOrdDtlDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlsOrdDtlDataImplToJson(
      this,
    );
  }
}

abstract class _SlsOrdDtlData implements SlsOrdDtlData {
  const factory _SlsOrdDtlData(
          {final String? description,
          @JsonKey(name: 'is_active') final bool status,
          @JsonKey(name: 'hdr_id') required final int hdrId,
          @JsonKey(name: 'card_id') required final int cardId,
          @JsonKey(name: 'in_qty') final int? inQty,
          @JsonKey(name: 'out_qty') required final int outQty,
          @JsonKey(name: 'year_id') final int? yearID,
          @JsonKey(name: 'is_free') final bool? isFree,
          @JsonKey(name: 'is_rejected') final bool? isRejected,
          @JsonKey(name: 'is_valid') final bool? isValid,
          @JsonKey(name: 'is_out_dated') final bool? isOutDated}) =
      _$SlsOrdDtlDataImpl;

  factory _SlsOrdDtlData.fromJson(Map<String, dynamic> json) =
      _$SlsOrdDtlDataImpl.fromJson;

  @override
  String? get description; //
  @override
  @JsonKey(name: 'is_active')
  bool get status;
  @override
  @JsonKey(name: 'hdr_id')
  int get hdrId;
  @override
  @JsonKey(name: 'card_id')
  int get cardId;
  @override
  @JsonKey(name: 'in_qty')
  int? get inQty;
  @override
  @JsonKey(name: 'out_qty')
  int get outQty;
  @override
  @JsonKey(name: 'year_id')
  int? get yearID; //
  @override
  @JsonKey(name: 'is_free')
  bool? get isFree;
  @override
  @JsonKey(name: 'is_rejected')
  bool? get isRejected;
  @override
  @JsonKey(name: 'is_valid')
  bool? get isValid;
  @override
  @JsonKey(name: 'is_out_dated')
  bool? get isOutDated;

  /// Create a copy of SlsOrdDtlData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SlsOrdDtlDataImplCopyWith<_$SlsOrdDtlDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SlsOrdDtlDataIn _$SlsOrdDtlDataInFromJson(Map<String, dynamic> json) {
  return _SlsOrdDtlDataIn.fromJson(json);
}

/// @nodoc
mixin _$SlsOrdDtlDataIn {
  @JsonKey(name: 'is_active')
  bool? get status => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError; //
  @JsonKey(name: 'hdr_id')
  int get hdrId => throw _privateConstructorUsedError;
  @JsonKey(name: 'card_id')
  int get cardId => throw _privateConstructorUsedError;
  @JsonKey(name: 'out_qty')
  int get outQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'year_id')
  int? get yearID => throw _privateConstructorUsedError; //
  @JsonKey(name: 'is_free')
  bool? get isFree => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_rejected')
  bool get isRejected => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_valid')
  bool get isValid => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_out_dated')
  bool? get isOutDated => throw _privateConstructorUsedError;

  /// Serializes this SlsOrdDtlDataIn to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SlsOrdDtlDataIn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SlsOrdDtlDataInCopyWith<SlsOrdDtlDataIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlsOrdDtlDataInCopyWith<$Res> {
  factory $SlsOrdDtlDataInCopyWith(
          SlsOrdDtlDataIn value, $Res Function(SlsOrdDtlDataIn) then) =
      _$SlsOrdDtlDataInCopyWithImpl<$Res, SlsOrdDtlDataIn>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_active') bool? status,
      String? description,
      @JsonKey(name: 'hdr_id') int hdrId,
      @JsonKey(name: 'card_id') int cardId,
      @JsonKey(name: 'out_qty') int outQty,
      @JsonKey(name: 'year_id') int? yearID,
      @JsonKey(name: 'is_free') bool? isFree,
      @JsonKey(name: 'is_rejected') bool isRejected,
      @JsonKey(name: 'is_valid') bool isValid,
      @JsonKey(name: 'is_out_dated') bool? isOutDated});
}

/// @nodoc
class _$SlsOrdDtlDataInCopyWithImpl<$Res, $Val extends SlsOrdDtlDataIn>
    implements $SlsOrdDtlDataInCopyWith<$Res> {
  _$SlsOrdDtlDataInCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SlsOrdDtlDataIn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? description = freezed,
    Object? hdrId = null,
    Object? cardId = null,
    Object? outQty = null,
    Object? yearID = freezed,
    Object? isFree = freezed,
    Object? isRejected = null,
    Object? isValid = null,
    Object? isOutDated = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      hdrId: null == hdrId
          ? _value.hdrId
          : hdrId // ignore: cast_nullable_to_non_nullable
              as int,
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      outQty: null == outQty
          ? _value.outQty
          : outQty // ignore: cast_nullable_to_non_nullable
              as int,
      yearID: freezed == yearID
          ? _value.yearID
          : yearID // ignore: cast_nullable_to_non_nullable
              as int?,
      isFree: freezed == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRejected: null == isRejected
          ? _value.isRejected
          : isRejected // ignore: cast_nullable_to_non_nullable
              as bool,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isOutDated: freezed == isOutDated
          ? _value.isOutDated
          : isOutDated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SlsOrdDtlDataInImplCopyWith<$Res>
    implements $SlsOrdDtlDataInCopyWith<$Res> {
  factory _$$SlsOrdDtlDataInImplCopyWith(_$SlsOrdDtlDataInImpl value,
          $Res Function(_$SlsOrdDtlDataInImpl) then) =
      __$$SlsOrdDtlDataInImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_active') bool? status,
      String? description,
      @JsonKey(name: 'hdr_id') int hdrId,
      @JsonKey(name: 'card_id') int cardId,
      @JsonKey(name: 'out_qty') int outQty,
      @JsonKey(name: 'year_id') int? yearID,
      @JsonKey(name: 'is_free') bool? isFree,
      @JsonKey(name: 'is_rejected') bool isRejected,
      @JsonKey(name: 'is_valid') bool isValid,
      @JsonKey(name: 'is_out_dated') bool? isOutDated});
}

/// @nodoc
class __$$SlsOrdDtlDataInImplCopyWithImpl<$Res>
    extends _$SlsOrdDtlDataInCopyWithImpl<$Res, _$SlsOrdDtlDataInImpl>
    implements _$$SlsOrdDtlDataInImplCopyWith<$Res> {
  __$$SlsOrdDtlDataInImplCopyWithImpl(
      _$SlsOrdDtlDataInImpl _value, $Res Function(_$SlsOrdDtlDataInImpl) _then)
      : super(_value, _then);

  /// Create a copy of SlsOrdDtlDataIn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? description = freezed,
    Object? hdrId = null,
    Object? cardId = null,
    Object? outQty = null,
    Object? yearID = freezed,
    Object? isFree = freezed,
    Object? isRejected = null,
    Object? isValid = null,
    Object? isOutDated = freezed,
  }) {
    return _then(_$SlsOrdDtlDataInImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      hdrId: null == hdrId
          ? _value.hdrId
          : hdrId // ignore: cast_nullable_to_non_nullable
              as int,
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      outQty: null == outQty
          ? _value.outQty
          : outQty // ignore: cast_nullable_to_non_nullable
              as int,
      yearID: freezed == yearID
          ? _value.yearID
          : yearID // ignore: cast_nullable_to_non_nullable
              as int?,
      isFree: freezed == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRejected: null == isRejected
          ? _value.isRejected
          : isRejected // ignore: cast_nullable_to_non_nullable
              as bool,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isOutDated: freezed == isOutDated
          ? _value.isOutDated
          : isOutDated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SlsOrdDtlDataInImpl implements _SlsOrdDtlDataIn {
  const _$SlsOrdDtlDataInImpl(
      {@JsonKey(name: 'is_active') this.status,
      this.description,
      @JsonKey(name: 'hdr_id') required this.hdrId,
      @JsonKey(name: 'card_id') required this.cardId,
      @JsonKey(name: 'out_qty') required this.outQty,
      @JsonKey(name: 'year_id') this.yearID,
      @JsonKey(name: 'is_free') this.isFree,
      @JsonKey(name: 'is_rejected') required this.isRejected,
      @JsonKey(name: 'is_valid') required this.isValid,
      @JsonKey(name: 'is_out_dated') this.isOutDated});

  factory _$SlsOrdDtlDataInImpl.fromJson(Map<String, dynamic> json) =>
      _$$SlsOrdDtlDataInImplFromJson(json);

  @override
  @JsonKey(name: 'is_active')
  final bool? status;
  @override
  final String? description;
//
  @override
  @JsonKey(name: 'hdr_id')
  final int hdrId;
  @override
  @JsonKey(name: 'card_id')
  final int cardId;
  @override
  @JsonKey(name: 'out_qty')
  final int outQty;
  @override
  @JsonKey(name: 'year_id')
  final int? yearID;
//
  @override
  @JsonKey(name: 'is_free')
  final bool? isFree;
  @override
  @JsonKey(name: 'is_rejected')
  final bool isRejected;
  @override
  @JsonKey(name: 'is_valid')
  final bool isValid;
  @override
  @JsonKey(name: 'is_out_dated')
  final bool? isOutDated;

  @override
  String toString() {
    return 'SlsOrdDtlDataIn(status: $status, description: $description, hdrId: $hdrId, cardId: $cardId, outQty: $outQty, yearID: $yearID, isFree: $isFree, isRejected: $isRejected, isValid: $isValid, isOutDated: $isOutDated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlsOrdDtlDataInImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.hdrId, hdrId) || other.hdrId == hdrId) &&
            (identical(other.cardId, cardId) || other.cardId == cardId) &&
            (identical(other.outQty, outQty) || other.outQty == outQty) &&
            (identical(other.yearID, yearID) || other.yearID == yearID) &&
            (identical(other.isFree, isFree) || other.isFree == isFree) &&
            (identical(other.isRejected, isRejected) ||
                other.isRejected == isRejected) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.isOutDated, isOutDated) ||
                other.isOutDated == isOutDated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, description, hdrId,
      cardId, outQty, yearID, isFree, isRejected, isValid, isOutDated);

  /// Create a copy of SlsOrdDtlDataIn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SlsOrdDtlDataInImplCopyWith<_$SlsOrdDtlDataInImpl> get copyWith =>
      __$$SlsOrdDtlDataInImplCopyWithImpl<_$SlsOrdDtlDataInImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlsOrdDtlDataInImplToJson(
      this,
    );
  }
}

abstract class _SlsOrdDtlDataIn implements SlsOrdDtlDataIn {
  const factory _SlsOrdDtlDataIn(
          {@JsonKey(name: 'is_active') final bool? status,
          final String? description,
          @JsonKey(name: 'hdr_id') required final int hdrId,
          @JsonKey(name: 'card_id') required final int cardId,
          @JsonKey(name: 'out_qty') required final int outQty,
          @JsonKey(name: 'year_id') final int? yearID,
          @JsonKey(name: 'is_free') final bool? isFree,
          @JsonKey(name: 'is_rejected') required final bool isRejected,
          @JsonKey(name: 'is_valid') required final bool isValid,
          @JsonKey(name: 'is_out_dated') final bool? isOutDated}) =
      _$SlsOrdDtlDataInImpl;

  factory _SlsOrdDtlDataIn.fromJson(Map<String, dynamic> json) =
      _$SlsOrdDtlDataInImpl.fromJson;

  @override
  @JsonKey(name: 'is_active')
  bool? get status;
  @override
  String? get description; //
  @override
  @JsonKey(name: 'hdr_id')
  int get hdrId;
  @override
  @JsonKey(name: 'card_id')
  int get cardId;
  @override
  @JsonKey(name: 'out_qty')
  int get outQty;
  @override
  @JsonKey(name: 'year_id')
  int? get yearID; //
  @override
  @JsonKey(name: 'is_free')
  bool? get isFree;
  @override
  @JsonKey(name: 'is_rejected')
  bool get isRejected;
  @override
  @JsonKey(name: 'is_valid')
  bool get isValid;
  @override
  @JsonKey(name: 'is_out_dated')
  bool? get isOutDated;

  /// Create a copy of SlsOrdDtlDataIn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SlsOrdDtlDataInImplCopyWith<_$SlsOrdDtlDataInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
