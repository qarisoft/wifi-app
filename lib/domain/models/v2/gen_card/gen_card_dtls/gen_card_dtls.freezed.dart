// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gen_card_dtls.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenerateCardDetails _$GenerateCardDetailsFromJson(Map<String, dynamic> json) {
  return _GenerateCardDetails.fromJson(json);
}

/// @nodoc
mixin _$GenerateCardDetails {
  @JsonKey(name: 'rec_ser')
  int get id => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'hdr_id')
  int get hdrId => throw _privateConstructorUsedError;
  @JsonKey(name: 'card_id')
  int get cardId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get status => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_aproved')
  bool get isApproved => throw _privateConstructorUsedError; //
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

  /// Serializes this GenerateCardDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenerateCardDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenerateCardDetailsCopyWith<GenerateCardDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateCardDetailsCopyWith<$Res> {
  factory $GenerateCardDetailsCopyWith(
          GenerateCardDetails value, $Res Function(GenerateCardDetails) then) =
      _$GenerateCardDetailsCopyWithImpl<$Res, GenerateCardDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'rec_ser') int id,
      int quantity,
      @JsonKey(name: 'hdr_id') int hdrId,
      @JsonKey(name: 'card_id') int cardId,
      @JsonKey(name: 'is_active') bool status,
      String description,
      @JsonKey(name: 'is_aproved') bool isApproved,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'created_by') int createdBy,
      @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt,
      @JsonKey(name: 'last_updated_by') int lastUpdatedBy,
      @JsonKey(name: 'update_counts') int updatedCount});
}

/// @nodoc
class _$GenerateCardDetailsCopyWithImpl<$Res, $Val extends GenerateCardDetails>
    implements $GenerateCardDetailsCopyWith<$Res> {
  _$GenerateCardDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenerateCardDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
    Object? hdrId = null,
    Object? cardId = null,
    Object? status = null,
    Object? description = null,
    Object? isApproved = null,
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
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      hdrId: null == hdrId
          ? _value.hdrId
          : hdrId // ignore: cast_nullable_to_non_nullable
              as int,
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isApproved: null == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
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
abstract class _$$GenerateCardDetailsImplCopyWith<$Res>
    implements $GenerateCardDetailsCopyWith<$Res> {
  factory _$$GenerateCardDetailsImplCopyWith(_$GenerateCardDetailsImpl value,
          $Res Function(_$GenerateCardDetailsImpl) then) =
      __$$GenerateCardDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'rec_ser') int id,
      int quantity,
      @JsonKey(name: 'hdr_id') int hdrId,
      @JsonKey(name: 'card_id') int cardId,
      @JsonKey(name: 'is_active') bool status,
      String description,
      @JsonKey(name: 'is_aproved') bool isApproved,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'created_by') int createdBy,
      @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt,
      @JsonKey(name: 'last_updated_by') int lastUpdatedBy,
      @JsonKey(name: 'update_counts') int updatedCount});
}

/// @nodoc
class __$$GenerateCardDetailsImplCopyWithImpl<$Res>
    extends _$GenerateCardDetailsCopyWithImpl<$Res, _$GenerateCardDetailsImpl>
    implements _$$GenerateCardDetailsImplCopyWith<$Res> {
  __$$GenerateCardDetailsImplCopyWithImpl(_$GenerateCardDetailsImpl _value,
      $Res Function(_$GenerateCardDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenerateCardDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
    Object? hdrId = null,
    Object? cardId = null,
    Object? status = null,
    Object? description = null,
    Object? isApproved = null,
    Object? createdAt = null,
    Object? createdBy = null,
    Object? lastUpdatedAt = freezed,
    Object? lastUpdatedBy = null,
    Object? updatedCount = null,
  }) {
    return _then(_$GenerateCardDetailsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      hdrId: null == hdrId
          ? _value.hdrId
          : hdrId // ignore: cast_nullable_to_non_nullable
              as int,
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isApproved: null == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
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
@JsonSerializable()
class _$GenerateCardDetailsImpl implements _GenerateCardDetails {
  const _$GenerateCardDetailsImpl(
      {@JsonKey(name: 'rec_ser') required this.id,
      required this.quantity,
      @JsonKey(name: 'hdr_id') required this.hdrId,
      @JsonKey(name: 'card_id') required this.cardId,
      @JsonKey(name: 'is_active') required this.status,
      required this.description,
      @JsonKey(name: 'is_aproved') required this.isApproved,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'created_by') required this.createdBy,
      @JsonKey(name: 'last_updated_at') this.lastUpdatedAt,
      @JsonKey(name: 'last_updated_by') required this.lastUpdatedBy,
      @JsonKey(name: 'update_counts') required this.updatedCount});

  factory _$GenerateCardDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenerateCardDetailsImplFromJson(json);

  @override
  @JsonKey(name: 'rec_ser')
  final int id;
  @override
  final int quantity;
  @override
  @JsonKey(name: 'hdr_id')
  final int hdrId;
  @override
  @JsonKey(name: 'card_id')
  final int cardId;
  @override
  @JsonKey(name: 'is_active')
  final bool status;
  @override
  final String description;
  @override
  @JsonKey(name: 'is_aproved')
  final bool isApproved;
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
    return 'GenerateCardDetails(id: $id, quantity: $quantity, hdrId: $hdrId, cardId: $cardId, status: $status, description: $description, isApproved: $isApproved, createdAt: $createdAt, createdBy: $createdBy, lastUpdatedAt: $lastUpdatedAt, lastUpdatedBy: $lastUpdatedBy, updatedCount: $updatedCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateCardDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.hdrId, hdrId) || other.hdrId == hdrId) &&
            (identical(other.cardId, cardId) || other.cardId == cardId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isApproved, isApproved) ||
                other.isApproved == isApproved) &&
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
      quantity,
      hdrId,
      cardId,
      status,
      description,
      isApproved,
      createdAt,
      createdBy,
      lastUpdatedAt,
      lastUpdatedBy,
      updatedCount);

  /// Create a copy of GenerateCardDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateCardDetailsImplCopyWith<_$GenerateCardDetailsImpl> get copyWith =>
      __$$GenerateCardDetailsImplCopyWithImpl<_$GenerateCardDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenerateCardDetailsImplToJson(
      this,
    );
  }
}

abstract class _GenerateCardDetails implements GenerateCardDetails {
  const factory _GenerateCardDetails(
          {@JsonKey(name: 'rec_ser') required final int id,
          required final int quantity,
          @JsonKey(name: 'hdr_id') required final int hdrId,
          @JsonKey(name: 'card_id') required final int cardId,
          @JsonKey(name: 'is_active') required final bool status,
          required final String description,
          @JsonKey(name: 'is_aproved') required final bool isApproved,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'created_by') required final int createdBy,
          @JsonKey(name: 'last_updated_at') final DateTime? lastUpdatedAt,
          @JsonKey(name: 'last_updated_by') required final int lastUpdatedBy,
          @JsonKey(name: 'update_counts') required final int updatedCount}) =
      _$GenerateCardDetailsImpl;

  factory _GenerateCardDetails.fromJson(Map<String, dynamic> json) =
      _$GenerateCardDetailsImpl.fromJson;

  @override
  @JsonKey(name: 'rec_ser')
  int get id;
  @override
  int get quantity;
  @override
  @JsonKey(name: 'hdr_id')
  int get hdrId;
  @override
  @JsonKey(name: 'card_id')
  int get cardId;
  @override
  @JsonKey(name: 'is_active')
  bool get status;
  @override
  String get description;
  @override
  @JsonKey(name: 'is_aproved')
  bool get isApproved; //
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

  /// Create a copy of GenerateCardDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenerateCardDetailsImplCopyWith<_$GenerateCardDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GnCardDtlData _$GnCardDtlDataFromJson(Map<String, dynamic> json) {
  return _GnCardDtlData.fromJson(json);
}

/// @nodoc
mixin _$GnCardDtlData {
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'hdr_id')
  int? get hdrId => throw _privateConstructorUsedError;
  @JsonKey(name: 'card_id')
  int get cardId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get status => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this GnCardDtlData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GnCardDtlData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GnCardDtlDataCopyWith<GnCardDtlData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GnCardDtlDataCopyWith<$Res> {
  factory $GnCardDtlDataCopyWith(
          GnCardDtlData value, $Res Function(GnCardDtlData) then) =
      _$GnCardDtlDataCopyWithImpl<$Res, GnCardDtlData>;
  @useResult
  $Res call(
      {int? quantity,
      @JsonKey(name: 'hdr_id') int? hdrId,
      @JsonKey(name: 'card_id') int cardId,
      @JsonKey(name: 'is_active') bool status,
      String? description});
}

/// @nodoc
class _$GnCardDtlDataCopyWithImpl<$Res, $Val extends GnCardDtlData>
    implements $GnCardDtlDataCopyWith<$Res> {
  _$GnCardDtlDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GnCardDtlData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = freezed,
    Object? hdrId = freezed,
    Object? cardId = null,
    Object? status = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      hdrId: freezed == hdrId
          ? _value.hdrId
          : hdrId // ignore: cast_nullable_to_non_nullable
              as int?,
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GnCardDtlDataImplCopyWith<$Res>
    implements $GnCardDtlDataCopyWith<$Res> {
  factory _$$GnCardDtlDataImplCopyWith(
          _$GnCardDtlDataImpl value, $Res Function(_$GnCardDtlDataImpl) then) =
      __$$GnCardDtlDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? quantity,
      @JsonKey(name: 'hdr_id') int? hdrId,
      @JsonKey(name: 'card_id') int cardId,
      @JsonKey(name: 'is_active') bool status,
      String? description});
}

/// @nodoc
class __$$GnCardDtlDataImplCopyWithImpl<$Res>
    extends _$GnCardDtlDataCopyWithImpl<$Res, _$GnCardDtlDataImpl>
    implements _$$GnCardDtlDataImplCopyWith<$Res> {
  __$$GnCardDtlDataImplCopyWithImpl(
      _$GnCardDtlDataImpl _value, $Res Function(_$GnCardDtlDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GnCardDtlData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = freezed,
    Object? hdrId = freezed,
    Object? cardId = null,
    Object? status = null,
    Object? description = freezed,
  }) {
    return _then(_$GnCardDtlDataImpl(
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      hdrId: freezed == hdrId
          ? _value.hdrId
          : hdrId // ignore: cast_nullable_to_non_nullable
              as int?,
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GnCardDtlDataImpl implements _GnCardDtlData {
  const _$GnCardDtlDataImpl(
      {this.quantity,
      @JsonKey(name: 'hdr_id') this.hdrId,
      @JsonKey(name: 'card_id') required this.cardId,
      @JsonKey(name: 'is_active') this.status = true,
      this.description});

  factory _$GnCardDtlDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GnCardDtlDataImplFromJson(json);

  @override
  final int? quantity;
  @override
  @JsonKey(name: 'hdr_id')
  final int? hdrId;
  @override
  @JsonKey(name: 'card_id')
  final int cardId;
  @override
  @JsonKey(name: 'is_active')
  final bool status;
  @override
  final String? description;

  @override
  String toString() {
    return 'GnCardDtlData(quantity: $quantity, hdrId: $hdrId, cardId: $cardId, status: $status, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GnCardDtlDataImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.hdrId, hdrId) || other.hdrId == hdrId) &&
            (identical(other.cardId, cardId) || other.cardId == cardId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, quantity, hdrId, cardId, status, description);

  /// Create a copy of GnCardDtlData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GnCardDtlDataImplCopyWith<_$GnCardDtlDataImpl> get copyWith =>
      __$$GnCardDtlDataImplCopyWithImpl<_$GnCardDtlDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GnCardDtlDataImplToJson(
      this,
    );
  }
}

abstract class _GnCardDtlData implements GnCardDtlData {
  const factory _GnCardDtlData(
      {final int? quantity,
      @JsonKey(name: 'hdr_id') final int? hdrId,
      @JsonKey(name: 'card_id') required final int cardId,
      @JsonKey(name: 'is_active') final bool status,
      final String? description}) = _$GnCardDtlDataImpl;

  factory _GnCardDtlData.fromJson(Map<String, dynamic> json) =
      _$GnCardDtlDataImpl.fromJson;

  @override
  int? get quantity;
  @override
  @JsonKey(name: 'hdr_id')
  int? get hdrId;
  @override
  @JsonKey(name: 'card_id')
  int get cardId;
  @override
  @JsonKey(name: 'is_active')
  bool get status;
  @override
  String? get description;

  /// Create a copy of GnCardDtlData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GnCardDtlDataImplCopyWith<_$GnCardDtlDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
