// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_header.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SalesOrderHeader _$SalesOrderHeaderFromJson(Map<String, dynamic> json) {
  return _SalesOrderHeader.fromJson(json);
}

/// @nodoc
mixin _$SalesOrderHeader {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_aproved')
  bool get isAproved => throw _privateConstructorUsedError;
  @JsonKey(name: 'point_id')
  int get salePointId => throw _privateConstructorUsedError;
  String get statement => throw _privateConstructorUsedError;
  @JsonKey(name: 'year_id')
  int get yearID => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_rejected')
  bool get isRejected => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_valid')
  bool get isValid => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_out_dated')
  bool get isOutDated => throw _privateConstructorUsedError;
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

  /// Serializes this SalesOrderHeader to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SalesOrderHeader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalesOrderHeaderCopyWith<SalesOrderHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesOrderHeaderCopyWith<$Res> {
  factory $SalesOrderHeaderCopyWith(
          SalesOrderHeader value, $Res Function(SalesOrderHeader) then) =
      _$SalesOrderHeaderCopyWithImpl<$Res, SalesOrderHeader>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'is_active') bool status,
      @JsonKey(name: 'is_aproved') bool isAproved,
      @JsonKey(name: 'point_id') int salePointId,
      String statement,
      @JsonKey(name: 'year_id') int yearID,
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
class _$SalesOrderHeaderCopyWithImpl<$Res, $Val extends SalesOrderHeader>
    implements $SalesOrderHeaderCopyWith<$Res> {
  _$SalesOrderHeaderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalesOrderHeader
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? isAproved = null,
    Object? salePointId = null,
    Object? statement = null,
    Object? yearID = null,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      isAproved: null == isAproved
          ? _value.isAproved
          : isAproved // ignore: cast_nullable_to_non_nullable
              as bool,
      salePointId: null == salePointId
          ? _value.salePointId
          : salePointId // ignore: cast_nullable_to_non_nullable
              as int,
      statement: null == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
      yearID: null == yearID
          ? _value.yearID
          : yearID // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$SalesOrderHeaderImplCopyWith<$Res>
    implements $SalesOrderHeaderCopyWith<$Res> {
  factory _$$SalesOrderHeaderImplCopyWith(_$SalesOrderHeaderImpl value,
          $Res Function(_$SalesOrderHeaderImpl) then) =
      __$$SalesOrderHeaderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'is_active') bool status,
      @JsonKey(name: 'is_aproved') bool isAproved,
      @JsonKey(name: 'point_id') int salePointId,
      String statement,
      @JsonKey(name: 'year_id') int yearID,
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
class __$$SalesOrderHeaderImplCopyWithImpl<$Res>
    extends _$SalesOrderHeaderCopyWithImpl<$Res, _$SalesOrderHeaderImpl>
    implements _$$SalesOrderHeaderImplCopyWith<$Res> {
  __$$SalesOrderHeaderImplCopyWithImpl(_$SalesOrderHeaderImpl _value,
      $Res Function(_$SalesOrderHeaderImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesOrderHeader
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? isAproved = null,
    Object? salePointId = null,
    Object? statement = null,
    Object? yearID = null,
    Object? isRejected = null,
    Object? isValid = null,
    Object? isOutDated = null,
    Object? createdAt = null,
    Object? createdBy = null,
    Object? lastUpdatedAt = freezed,
    Object? lastUpdatedBy = null,
    Object? updatedCount = null,
  }) {
    return _then(_$SalesOrderHeaderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      isAproved: null == isAproved
          ? _value.isAproved
          : isAproved // ignore: cast_nullable_to_non_nullable
              as bool,
      salePointId: null == salePointId
          ? _value.salePointId
          : salePointId // ignore: cast_nullable_to_non_nullable
              as int,
      statement: null == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
      yearID: null == yearID
          ? _value.yearID
          : yearID // ignore: cast_nullable_to_non_nullable
              as int,
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
@JsonSerializable()
class _$SalesOrderHeaderImpl implements _SalesOrderHeader {
  const _$SalesOrderHeaderImpl(
      {required this.id,
      @JsonKey(name: 'is_active') required this.status,
      @JsonKey(name: 'is_aproved') required this.isAproved,
      @JsonKey(name: 'point_id') required this.salePointId,
      this.statement = 'create order',
      @JsonKey(name: 'year_id') required this.yearID,
      @JsonKey(name: 'is_rejected') required this.isRejected,
      @JsonKey(name: 'is_valid') required this.isValid,
      @JsonKey(name: 'is_out_dated') required this.isOutDated,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'created_by') required this.createdBy,
      @JsonKey(name: 'last_updated_at') this.lastUpdatedAt,
      @JsonKey(name: 'last_updated_by') required this.lastUpdatedBy,
      @JsonKey(name: 'update_counts') required this.updatedCount});

  factory _$SalesOrderHeaderImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesOrderHeaderImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'is_active')
  final bool status;
  @override
  @JsonKey(name: 'is_aproved')
  final bool isAproved;
  @override
  @JsonKey(name: 'point_id')
  final int salePointId;
  @override
  @JsonKey()
  final String statement;
  @override
  @JsonKey(name: 'year_id')
  final int yearID;
  @override
  @JsonKey(name: 'is_rejected')
  final bool isRejected;
  @override
  @JsonKey(name: 'is_valid')
  final bool isValid;
  @override
  @JsonKey(name: 'is_out_dated')
  final bool isOutDated;
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
    return 'SalesOrderHeader(id: $id, status: $status, isAproved: $isAproved, salePointId: $salePointId, statement: $statement, yearID: $yearID, isRejected: $isRejected, isValid: $isValid, isOutDated: $isOutDated, createdAt: $createdAt, createdBy: $createdBy, lastUpdatedAt: $lastUpdatedAt, lastUpdatedBy: $lastUpdatedBy, updatedCount: $updatedCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesOrderHeaderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isAproved, isAproved) ||
                other.isAproved == isAproved) &&
            (identical(other.salePointId, salePointId) ||
                other.salePointId == salePointId) &&
            (identical(other.statement, statement) ||
                other.statement == statement) &&
            (identical(other.yearID, yearID) || other.yearID == yearID) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      id,
      status,
      isAproved,
      salePointId,
      statement,
      yearID,
      isRejected,
      isValid,
      isOutDated,
      createdAt,
      createdBy,
      lastUpdatedAt,
      lastUpdatedBy,
      updatedCount);

  /// Create a copy of SalesOrderHeader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesOrderHeaderImplCopyWith<_$SalesOrderHeaderImpl> get copyWith =>
      __$$SalesOrderHeaderImplCopyWithImpl<_$SalesOrderHeaderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesOrderHeaderImplToJson(
      this,
    );
  }
}

abstract class _SalesOrderHeader implements SalesOrderHeader {
  const factory _SalesOrderHeader(
          {required final int id,
          @JsonKey(name: 'is_active') required final bool status,
          @JsonKey(name: 'is_aproved') required final bool isAproved,
          @JsonKey(name: 'point_id') required final int salePointId,
          final String statement,
          @JsonKey(name: 'year_id') required final int yearID,
          @JsonKey(name: 'is_rejected') required final bool isRejected,
          @JsonKey(name: 'is_valid') required final bool isValid,
          @JsonKey(name: 'is_out_dated') required final bool isOutDated,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'created_by') required final int createdBy,
          @JsonKey(name: 'last_updated_at') final DateTime? lastUpdatedAt,
          @JsonKey(name: 'last_updated_by') required final int lastUpdatedBy,
          @JsonKey(name: 'update_counts') required final int updatedCount}) =
      _$SalesOrderHeaderImpl;

  factory _SalesOrderHeader.fromJson(Map<String, dynamic> json) =
      _$SalesOrderHeaderImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'is_active')
  bool get status;
  @override
  @JsonKey(name: 'is_aproved')
  bool get isAproved;
  @override
  @JsonKey(name: 'point_id')
  int get salePointId;
  @override
  String get statement;
  @override
  @JsonKey(name: 'year_id')
  int get yearID;
  @override
  @JsonKey(name: 'is_rejected')
  bool get isRejected;
  @override
  @JsonKey(name: 'is_valid')
  bool get isValid;
  @override
  @JsonKey(name: 'is_out_dated')
  bool get isOutDated;
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

  /// Create a copy of SalesOrderHeader
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalesOrderHeaderImplCopyWith<_$SalesOrderHeaderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SlsOrdHdrData _$SlsOrdHdrDataFromJson(Map<String, dynamic> json) {
  return _SlsOrdHdrData.fromJson(json);
}

/// @nodoc
mixin _$SlsOrdHdrData {
  @JsonKey(name: 'point_id')
  int get salePointId => throw _privateConstructorUsedError;
  String get statement => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_rejected')
  bool? get isRejected => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_valid')
  bool? get isValid => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_out_dated')
  bool? get isOutDated => throw _privateConstructorUsedError;

  /// Serializes this SlsOrdHdrData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SlsOrdHdrData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SlsOrdHdrDataCopyWith<SlsOrdHdrData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlsOrdHdrDataCopyWith<$Res> {
  factory $SlsOrdHdrDataCopyWith(
          SlsOrdHdrData value, $Res Function(SlsOrdHdrData) then) =
      _$SlsOrdHdrDataCopyWithImpl<$Res, SlsOrdHdrData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'point_id') int salePointId,
      String statement,
      @JsonKey(name: 'is_active') bool? status,
      @JsonKey(name: 'is_rejected') bool? isRejected,
      @JsonKey(name: 'is_valid') bool? isValid,
      @JsonKey(name: 'is_out_dated') bool? isOutDated});
}

/// @nodoc
class _$SlsOrdHdrDataCopyWithImpl<$Res, $Val extends SlsOrdHdrData>
    implements $SlsOrdHdrDataCopyWith<$Res> {
  _$SlsOrdHdrDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SlsOrdHdrData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salePointId = null,
    Object? statement = null,
    Object? status = freezed,
    Object? isRejected = freezed,
    Object? isValid = freezed,
    Object? isOutDated = freezed,
  }) {
    return _then(_value.copyWith(
      salePointId: null == salePointId
          ? _value.salePointId
          : salePointId // ignore: cast_nullable_to_non_nullable
              as int,
      statement: null == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SlsOrdHdrDataImplCopyWith<$Res>
    implements $SlsOrdHdrDataCopyWith<$Res> {
  factory _$$SlsOrdHdrDataImplCopyWith(
          _$SlsOrdHdrDataImpl value, $Res Function(_$SlsOrdHdrDataImpl) then) =
      __$$SlsOrdHdrDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'point_id') int salePointId,
      String statement,
      @JsonKey(name: 'is_active') bool? status,
      @JsonKey(name: 'is_rejected') bool? isRejected,
      @JsonKey(name: 'is_valid') bool? isValid,
      @JsonKey(name: 'is_out_dated') bool? isOutDated});
}

/// @nodoc
class __$$SlsOrdHdrDataImplCopyWithImpl<$Res>
    extends _$SlsOrdHdrDataCopyWithImpl<$Res, _$SlsOrdHdrDataImpl>
    implements _$$SlsOrdHdrDataImplCopyWith<$Res> {
  __$$SlsOrdHdrDataImplCopyWithImpl(
      _$SlsOrdHdrDataImpl _value, $Res Function(_$SlsOrdHdrDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SlsOrdHdrData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salePointId = null,
    Object? statement = null,
    Object? status = freezed,
    Object? isRejected = freezed,
    Object? isValid = freezed,
    Object? isOutDated = freezed,
  }) {
    return _then(_$SlsOrdHdrDataImpl(
      salePointId: null == salePointId
          ? _value.salePointId
          : salePointId // ignore: cast_nullable_to_non_nullable
              as int,
      statement: null == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
@JsonSerializable()
class _$SlsOrdHdrDataImpl implements _SlsOrdHdrData {
  const _$SlsOrdHdrDataImpl(
      {@JsonKey(name: 'point_id') required this.salePointId,
      this.statement = 'null',
      @JsonKey(name: 'is_active') this.status,
      @JsonKey(name: 'is_rejected') this.isRejected,
      @JsonKey(name: 'is_valid') this.isValid,
      @JsonKey(name: 'is_out_dated') this.isOutDated});

  factory _$SlsOrdHdrDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SlsOrdHdrDataImplFromJson(json);

  @override
  @JsonKey(name: 'point_id')
  final int salePointId;
  @override
  @JsonKey()
  final String statement;
  @override
  @JsonKey(name: 'is_active')
  final bool? status;
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
    return 'SlsOrdHdrData(salePointId: $salePointId, statement: $statement, status: $status, isRejected: $isRejected, isValid: $isValid, isOutDated: $isOutDated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlsOrdHdrDataImpl &&
            (identical(other.salePointId, salePointId) ||
                other.salePointId == salePointId) &&
            (identical(other.statement, statement) ||
                other.statement == statement) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isRejected, isRejected) ||
                other.isRejected == isRejected) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.isOutDated, isOutDated) ||
                other.isOutDated == isOutDated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, salePointId, statement, status,
      isRejected, isValid, isOutDated);

  /// Create a copy of SlsOrdHdrData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SlsOrdHdrDataImplCopyWith<_$SlsOrdHdrDataImpl> get copyWith =>
      __$$SlsOrdHdrDataImplCopyWithImpl<_$SlsOrdHdrDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlsOrdHdrDataImplToJson(
      this,
    );
  }
}

abstract class _SlsOrdHdrData implements SlsOrdHdrData {
  const factory _SlsOrdHdrData(
          {@JsonKey(name: 'point_id') required final int salePointId,
          final String statement,
          @JsonKey(name: 'is_active') final bool? status,
          @JsonKey(name: 'is_rejected') final bool? isRejected,
          @JsonKey(name: 'is_valid') final bool? isValid,
          @JsonKey(name: 'is_out_dated') final bool? isOutDated}) =
      _$SlsOrdHdrDataImpl;

  factory _SlsOrdHdrData.fromJson(Map<String, dynamic> json) =
      _$SlsOrdHdrDataImpl.fromJson;

  @override
  @JsonKey(name: 'point_id')
  int get salePointId;
  @override
  String get statement;
  @override
  @JsonKey(name: 'is_active')
  bool? get status;
  @override
  @JsonKey(name: 'is_rejected')
  bool? get isRejected;
  @override
  @JsonKey(name: 'is_valid')
  bool? get isValid;
  @override
  @JsonKey(name: 'is_out_dated')
  bool? get isOutDated;

  /// Create a copy of SlsOrdHdrData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SlsOrdHdrDataImplCopyWith<_$SlsOrdHdrDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
