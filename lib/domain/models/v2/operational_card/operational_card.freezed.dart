// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operational_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OperationalCard _$OperationalCardFromJson(Map<String, dynamic> json) {
  return _OperationalCard.fromJson(json);
}

/// @nodoc
mixin _$OperationalCard {
  @JsonKey(name: 'rec_ser')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'card_id')
  int get cardId => throw _privateConstructorUsedError;
  @JsonKey(name: 'year_id')
  int get yearId => throw _privateConstructorUsedError;
  @JsonKey(name: 'in_qty')
  int get inQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'out_qty')
  int get outQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'card_price')
  double get cardPrice => throw _privateConstructorUsedError; //
  @JsonKey(name: 'is_free')
  bool get isFree => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_generated')
  bool get isGenerated => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_valid')
  bool get isValid => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_rejected')
  bool get isRejected => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_out_dated')
  bool get isOutDated => throw _privateConstructorUsedError; //
  @JsonKey(name: 'source_id')
  int get sourceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_table')
  String get sourceTable => throw _privateConstructorUsedError; //
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  int get createdBy => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this OperationalCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OperationalCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OperationalCardCopyWith<OperationalCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationalCardCopyWith<$Res> {
  factory $OperationalCardCopyWith(
          OperationalCard value, $Res Function(OperationalCard) then) =
      _$OperationalCardCopyWithImpl<$Res, OperationalCard>;
  @useResult
  $Res call(
      {@JsonKey(name: 'rec_ser') int id,
      @JsonKey(name: 'card_id') int cardId,
      @JsonKey(name: 'year_id') int yearId,
      @JsonKey(name: 'in_qty') int inQty,
      @JsonKey(name: 'out_qty') int outQty,
      @JsonKey(name: 'card_price') double cardPrice,
      @JsonKey(name: 'is_free') bool isFree,
      @JsonKey(name: 'is_generated') bool isGenerated,
      @JsonKey(name: 'is_valid') bool isValid,
      @JsonKey(name: 'is_rejected') bool isRejected,
      @JsonKey(name: 'is_out_dated') bool isOutDated,
      @JsonKey(name: 'source_id') int sourceId,
      @JsonKey(name: 'source_table') String sourceTable,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'created_by') int createdBy,
      String description});
}

/// @nodoc
class _$OperationalCardCopyWithImpl<$Res, $Val extends OperationalCard>
    implements $OperationalCardCopyWith<$Res> {
  _$OperationalCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OperationalCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cardId = null,
    Object? yearId = null,
    Object? inQty = null,
    Object? outQty = null,
    Object? cardPrice = null,
    Object? isFree = null,
    Object? isGenerated = null,
    Object? isValid = null,
    Object? isRejected = null,
    Object? isOutDated = null,
    Object? sourceId = null,
    Object? sourceTable = null,
    Object? createdAt = null,
    Object? createdBy = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      yearId: null == yearId
          ? _value.yearId
          : yearId // ignore: cast_nullable_to_non_nullable
              as int,
      inQty: null == inQty
          ? _value.inQty
          : inQty // ignore: cast_nullable_to_non_nullable
              as int,
      outQty: null == outQty
          ? _value.outQty
          : outQty // ignore: cast_nullable_to_non_nullable
              as int,
      cardPrice: null == cardPrice
          ? _value.cardPrice
          : cardPrice // ignore: cast_nullable_to_non_nullable
              as double,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isGenerated: null == isGenerated
          ? _value.isGenerated
          : isGenerated // ignore: cast_nullable_to_non_nullable
              as bool,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isRejected: null == isRejected
          ? _value.isRejected
          : isRejected // ignore: cast_nullable_to_non_nullable
              as bool,
      isOutDated: null == isOutDated
          ? _value.isOutDated
          : isOutDated // ignore: cast_nullable_to_non_nullable
              as bool,
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as int,
      sourceTable: null == sourceTable
          ? _value.sourceTable
          : sourceTable // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OperationalCardImplCopyWith<$Res>
    implements $OperationalCardCopyWith<$Res> {
  factory _$$OperationalCardImplCopyWith(_$OperationalCardImpl value,
          $Res Function(_$OperationalCardImpl) then) =
      __$$OperationalCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'rec_ser') int id,
      @JsonKey(name: 'card_id') int cardId,
      @JsonKey(name: 'year_id') int yearId,
      @JsonKey(name: 'in_qty') int inQty,
      @JsonKey(name: 'out_qty') int outQty,
      @JsonKey(name: 'card_price') double cardPrice,
      @JsonKey(name: 'is_free') bool isFree,
      @JsonKey(name: 'is_generated') bool isGenerated,
      @JsonKey(name: 'is_valid') bool isValid,
      @JsonKey(name: 'is_rejected') bool isRejected,
      @JsonKey(name: 'is_out_dated') bool isOutDated,
      @JsonKey(name: 'source_id') int sourceId,
      @JsonKey(name: 'source_table') String sourceTable,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'created_by') int createdBy,
      String description});
}

/// @nodoc
class __$$OperationalCardImplCopyWithImpl<$Res>
    extends _$OperationalCardCopyWithImpl<$Res, _$OperationalCardImpl>
    implements _$$OperationalCardImplCopyWith<$Res> {
  __$$OperationalCardImplCopyWithImpl(
      _$OperationalCardImpl _value, $Res Function(_$OperationalCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of OperationalCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cardId = null,
    Object? yearId = null,
    Object? inQty = null,
    Object? outQty = null,
    Object? cardPrice = null,
    Object? isFree = null,
    Object? isGenerated = null,
    Object? isValid = null,
    Object? isRejected = null,
    Object? isOutDated = null,
    Object? sourceId = null,
    Object? sourceTable = null,
    Object? createdAt = null,
    Object? createdBy = null,
    Object? description = null,
  }) {
    return _then(_$OperationalCardImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      yearId: null == yearId
          ? _value.yearId
          : yearId // ignore: cast_nullable_to_non_nullable
              as int,
      inQty: null == inQty
          ? _value.inQty
          : inQty // ignore: cast_nullable_to_non_nullable
              as int,
      outQty: null == outQty
          ? _value.outQty
          : outQty // ignore: cast_nullable_to_non_nullable
              as int,
      cardPrice: null == cardPrice
          ? _value.cardPrice
          : cardPrice // ignore: cast_nullable_to_non_nullable
              as double,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isGenerated: null == isGenerated
          ? _value.isGenerated
          : isGenerated // ignore: cast_nullable_to_non_nullable
              as bool,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isRejected: null == isRejected
          ? _value.isRejected
          : isRejected // ignore: cast_nullable_to_non_nullable
              as bool,
      isOutDated: null == isOutDated
          ? _value.isOutDated
          : isOutDated // ignore: cast_nullable_to_non_nullable
              as bool,
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as int,
      sourceTable: null == sourceTable
          ? _value.sourceTable
          : sourceTable // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OperationalCardImpl implements _OperationalCard {
  const _$OperationalCardImpl(
      {@JsonKey(name: 'rec_ser') required this.id,
      @JsonKey(name: 'card_id') required this.cardId,
      @JsonKey(name: 'year_id') required this.yearId,
      @JsonKey(name: 'in_qty') required this.inQty,
      @JsonKey(name: 'out_qty') required this.outQty,
      @JsonKey(name: 'card_price') required this.cardPrice,
      @JsonKey(name: 'is_free') required this.isFree,
      @JsonKey(name: 'is_generated') required this.isGenerated,
      @JsonKey(name: 'is_valid') required this.isValid,
      @JsonKey(name: 'is_rejected') required this.isRejected,
      @JsonKey(name: 'is_out_dated') required this.isOutDated,
      @JsonKey(name: 'source_id') required this.sourceId,
      @JsonKey(name: 'source_table') required this.sourceTable,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'created_by') required this.createdBy,
      required this.description});

  factory _$OperationalCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$OperationalCardImplFromJson(json);

  @override
  @JsonKey(name: 'rec_ser')
  final int id;
  @override
  @JsonKey(name: 'card_id')
  final int cardId;
  @override
  @JsonKey(name: 'year_id')
  final int yearId;
  @override
  @JsonKey(name: 'in_qty')
  final int inQty;
  @override
  @JsonKey(name: 'out_qty')
  final int outQty;
  @override
  @JsonKey(name: 'card_price')
  final double cardPrice;
//
  @override
  @JsonKey(name: 'is_free')
  final bool isFree;
  @override
  @JsonKey(name: 'is_generated')
  final bool isGenerated;
  @override
  @JsonKey(name: 'is_valid')
  final bool isValid;
  @override
  @JsonKey(name: 'is_rejected')
  final bool isRejected;
  @override
  @JsonKey(name: 'is_out_dated')
  final bool isOutDated;
//
  @override
  @JsonKey(name: 'source_id')
  final int sourceId;
  @override
  @JsonKey(name: 'source_table')
  final String sourceTable;
//
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'created_by')
  final int createdBy;
  @override
  final String description;

  @override
  String toString() {
    return 'OperationalCard(id: $id, cardId: $cardId, yearId: $yearId, inQty: $inQty, outQty: $outQty, cardPrice: $cardPrice, isFree: $isFree, isGenerated: $isGenerated, isValid: $isValid, isRejected: $isRejected, isOutDated: $isOutDated, sourceId: $sourceId, sourceTable: $sourceTable, createdAt: $createdAt, createdBy: $createdBy, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperationalCardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cardId, cardId) || other.cardId == cardId) &&
            (identical(other.yearId, yearId) || other.yearId == yearId) &&
            (identical(other.inQty, inQty) || other.inQty == inQty) &&
            (identical(other.outQty, outQty) || other.outQty == outQty) &&
            (identical(other.cardPrice, cardPrice) ||
                other.cardPrice == cardPrice) &&
            (identical(other.isFree, isFree) || other.isFree == isFree) &&
            (identical(other.isGenerated, isGenerated) ||
                other.isGenerated == isGenerated) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.isRejected, isRejected) ||
                other.isRejected == isRejected) &&
            (identical(other.isOutDated, isOutDated) ||
                other.isOutDated == isOutDated) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.sourceTable, sourceTable) ||
                other.sourceTable == sourceTable) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      cardId,
      yearId,
      inQty,
      outQty,
      cardPrice,
      isFree,
      isGenerated,
      isValid,
      isRejected,
      isOutDated,
      sourceId,
      sourceTable,
      createdAt,
      createdBy,
      description);

  /// Create a copy of OperationalCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OperationalCardImplCopyWith<_$OperationalCardImpl> get copyWith =>
      __$$OperationalCardImplCopyWithImpl<_$OperationalCardImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OperationalCardImplToJson(
      this,
    );
  }
}

abstract class _OperationalCard implements OperationalCard {
  const factory _OperationalCard(
      {@JsonKey(name: 'rec_ser') required final int id,
      @JsonKey(name: 'card_id') required final int cardId,
      @JsonKey(name: 'year_id') required final int yearId,
      @JsonKey(name: 'in_qty') required final int inQty,
      @JsonKey(name: 'out_qty') required final int outQty,
      @JsonKey(name: 'card_price') required final double cardPrice,
      @JsonKey(name: 'is_free') required final bool isFree,
      @JsonKey(name: 'is_generated') required final bool isGenerated,
      @JsonKey(name: 'is_valid') required final bool isValid,
      @JsonKey(name: 'is_rejected') required final bool isRejected,
      @JsonKey(name: 'is_out_dated') required final bool isOutDated,
      @JsonKey(name: 'source_id') required final int sourceId,
      @JsonKey(name: 'source_table') required final String sourceTable,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'created_by') required final int createdBy,
      required final String description}) = _$OperationalCardImpl;

  factory _OperationalCard.fromJson(Map<String, dynamic> json) =
      _$OperationalCardImpl.fromJson;

  @override
  @JsonKey(name: 'rec_ser')
  int get id;
  @override
  @JsonKey(name: 'card_id')
  int get cardId;
  @override
  @JsonKey(name: 'year_id')
  int get yearId;
  @override
  @JsonKey(name: 'in_qty')
  int get inQty;
  @override
  @JsonKey(name: 'out_qty')
  int get outQty;
  @override
  @JsonKey(name: 'card_price')
  double get cardPrice; //
  @override
  @JsonKey(name: 'is_free')
  bool get isFree;
  @override
  @JsonKey(name: 'is_generated')
  bool get isGenerated;
  @override
  @JsonKey(name: 'is_valid')
  bool get isValid;
  @override
  @JsonKey(name: 'is_rejected')
  bool get isRejected;
  @override
  @JsonKey(name: 'is_out_dated')
  bool get isOutDated; //
  @override
  @JsonKey(name: 'source_id')
  int get sourceId;
  @override
  @JsonKey(name: 'source_table')
  String get sourceTable; //
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'created_by')
  int get createdBy;
  @override
  String get description;

  /// Create a copy of OperationalCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OperationalCardImplCopyWith<_$OperationalCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
