// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gen_card_hdr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenerateCardHeader _$GenerateCardHeaderFromJson(Map<String, dynamic> json) {
  return _GenerateCardHeader.fromJson(json);
}

/// @nodoc
mixin _$GenerateCardHeader {
  String get description => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'year_id')
  int get yearId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_aproved')
  bool get isAproved => throw _privateConstructorUsedError;
  @JsonKey(name: 'generated_date')
  DateTime get generatedDate => throw _privateConstructorUsedError; //
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

  /// Serializes this GenerateCardHeader to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenerateCardHeader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenerateCardHeaderCopyWith<GenerateCardHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateCardHeaderCopyWith<$Res> {
  factory $GenerateCardHeaderCopyWith(
          GenerateCardHeader value, $Res Function(GenerateCardHeader) then) =
      _$GenerateCardHeaderCopyWithImpl<$Res, GenerateCardHeader>;
  @useResult
  $Res call(
      {String description,
      int id,
      @JsonKey(name: 'is_active') bool status,
      @JsonKey(name: 'year_id') int yearId,
      @JsonKey(name: 'is_aproved') bool isAproved,
      @JsonKey(name: 'generated_date') DateTime generatedDate,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'created_by') int createdBy,
      @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt,
      @JsonKey(name: 'last_updated_by') int lastUpdatedBy,
      @JsonKey(name: 'update_counts') int updatedCount});
}

/// @nodoc
class _$GenerateCardHeaderCopyWithImpl<$Res, $Val extends GenerateCardHeader>
    implements $GenerateCardHeaderCopyWith<$Res> {
  _$GenerateCardHeaderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenerateCardHeader
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? id = null,
    Object? status = null,
    Object? yearId = null,
    Object? isAproved = null,
    Object? generatedDate = null,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      yearId: null == yearId
          ? _value.yearId
          : yearId // ignore: cast_nullable_to_non_nullable
              as int,
      isAproved: null == isAproved
          ? _value.isAproved
          : isAproved // ignore: cast_nullable_to_non_nullable
              as bool,
      generatedDate: null == generatedDate
          ? _value.generatedDate
          : generatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
abstract class _$$GenerateCardHeaderImplCopyWith<$Res>
    implements $GenerateCardHeaderCopyWith<$Res> {
  factory _$$GenerateCardHeaderImplCopyWith(_$GenerateCardHeaderImpl value,
          $Res Function(_$GenerateCardHeaderImpl) then) =
      __$$GenerateCardHeaderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      int id,
      @JsonKey(name: 'is_active') bool status,
      @JsonKey(name: 'year_id') int yearId,
      @JsonKey(name: 'is_aproved') bool isAproved,
      @JsonKey(name: 'generated_date') DateTime generatedDate,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'created_by') int createdBy,
      @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt,
      @JsonKey(name: 'last_updated_by') int lastUpdatedBy,
      @JsonKey(name: 'update_counts') int updatedCount});
}

/// @nodoc
class __$$GenerateCardHeaderImplCopyWithImpl<$Res>
    extends _$GenerateCardHeaderCopyWithImpl<$Res, _$GenerateCardHeaderImpl>
    implements _$$GenerateCardHeaderImplCopyWith<$Res> {
  __$$GenerateCardHeaderImplCopyWithImpl(_$GenerateCardHeaderImpl _value,
      $Res Function(_$GenerateCardHeaderImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenerateCardHeader
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? id = null,
    Object? status = null,
    Object? yearId = null,
    Object? isAproved = null,
    Object? generatedDate = null,
    Object? createdAt = null,
    Object? createdBy = null,
    Object? lastUpdatedAt = freezed,
    Object? lastUpdatedBy = null,
    Object? updatedCount = null,
  }) {
    return _then(_$GenerateCardHeaderImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      yearId: null == yearId
          ? _value.yearId
          : yearId // ignore: cast_nullable_to_non_nullable
              as int,
      isAproved: null == isAproved
          ? _value.isAproved
          : isAproved // ignore: cast_nullable_to_non_nullable
              as bool,
      generatedDate: null == generatedDate
          ? _value.generatedDate
          : generatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
class _$GenerateCardHeaderImpl implements _GenerateCardHeader {
  const _$GenerateCardHeaderImpl(
      {this.description = '',
      required this.id,
      @JsonKey(name: 'is_active') required this.status,
      @JsonKey(name: 'year_id') required this.yearId,
      @JsonKey(name: 'is_aproved') required this.isAproved,
      @JsonKey(name: 'generated_date') required this.generatedDate,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'created_by') required this.createdBy,
      @JsonKey(name: 'last_updated_at') this.lastUpdatedAt,
      @JsonKey(name: 'last_updated_by') required this.lastUpdatedBy,
      @JsonKey(name: 'update_counts') required this.updatedCount});

  factory _$GenerateCardHeaderImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenerateCardHeaderImplFromJson(json);

  @override
  @JsonKey()
  final String description;
  @override
  final int id;
  @override
  @JsonKey(name: 'is_active')
  final bool status;
  @override
  @JsonKey(name: 'year_id')
  final int yearId;
  @override
  @JsonKey(name: 'is_aproved')
  final bool isAproved;
  @override
  @JsonKey(name: 'generated_date')
  final DateTime generatedDate;
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
    return 'GenerateCardHeader(description: $description, id: $id, status: $status, yearId: $yearId, isAproved: $isAproved, generatedDate: $generatedDate, createdAt: $createdAt, createdBy: $createdBy, lastUpdatedAt: $lastUpdatedAt, lastUpdatedBy: $lastUpdatedBy, updatedCount: $updatedCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateCardHeaderImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.yearId, yearId) || other.yearId == yearId) &&
            (identical(other.isAproved, isAproved) ||
                other.isAproved == isAproved) &&
            (identical(other.generatedDate, generatedDate) ||
                other.generatedDate == generatedDate) &&
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
      description,
      id,
      status,
      yearId,
      isAproved,
      generatedDate,
      createdAt,
      createdBy,
      lastUpdatedAt,
      lastUpdatedBy,
      updatedCount);

  /// Create a copy of GenerateCardHeader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateCardHeaderImplCopyWith<_$GenerateCardHeaderImpl> get copyWith =>
      __$$GenerateCardHeaderImplCopyWithImpl<_$GenerateCardHeaderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenerateCardHeaderImplToJson(
      this,
    );
  }
}

abstract class _GenerateCardHeader implements GenerateCardHeader {
  const factory _GenerateCardHeader(
      {final String description,
      required final int id,
      @JsonKey(name: 'is_active') required final bool status,
      @JsonKey(name: 'year_id') required final int yearId,
      @JsonKey(name: 'is_aproved') required final bool isAproved,
      @JsonKey(name: 'generated_date') required final DateTime generatedDate,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'created_by') required final int createdBy,
      @JsonKey(name: 'last_updated_at') final DateTime? lastUpdatedAt,
      @JsonKey(name: 'last_updated_by') required final int lastUpdatedBy,
      @JsonKey(name: 'update_counts')
      required final int updatedCount}) = _$GenerateCardHeaderImpl;

  factory _GenerateCardHeader.fromJson(Map<String, dynamic> json) =
      _$GenerateCardHeaderImpl.fromJson;

  @override
  String get description;
  @override
  int get id;
  @override
  @JsonKey(name: 'is_active')
  bool get status;
  @override
  @JsonKey(name: 'year_id')
  int get yearId;
  @override
  @JsonKey(name: 'is_aproved')
  bool get isAproved;
  @override
  @JsonKey(name: 'generated_date')
  DateTime get generatedDate; //
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

  /// Create a copy of GenerateCardHeader
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenerateCardHeaderImplCopyWith<_$GenerateCardHeaderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GnCardHdrRes _$GnCardHdrResFromJson(Map<String, dynamic> json) {
  return _GnCardHdrRes.fromJson(json);
}

/// @nodoc
mixin _$GnCardHdrRes {
  String get description => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'year_id')
  int? get yearId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_aproved')
  bool? get isAproved => throw _privateConstructorUsedError;
  @JsonKey(name: 'generated_date')
  DateTime? get generatedDate => throw _privateConstructorUsedError; //
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  int? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated_at')
  DateTime? get lastUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated_by')
  int? get lastUpdatedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'update_counts')
  int? get updatedCount => throw _privateConstructorUsedError;

  /// Serializes this GnCardHdrRes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GnCardHdrRes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GnCardHdrResCopyWith<GnCardHdrRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GnCardHdrResCopyWith<$Res> {
  factory $GnCardHdrResCopyWith(
          GnCardHdrRes value, $Res Function(GnCardHdrRes) then) =
      _$GnCardHdrResCopyWithImpl<$Res, GnCardHdrRes>;
  @useResult
  $Res call(
      {String description,
      int? id,
      @JsonKey(name: 'is_active') bool status,
      @JsonKey(name: 'year_id') int? yearId,
      @JsonKey(name: 'is_aproved') bool? isAproved,
      @JsonKey(name: 'generated_date') DateTime? generatedDate,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'created_by') int? createdBy,
      @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt,
      @JsonKey(name: 'last_updated_by') int? lastUpdatedBy,
      @JsonKey(name: 'update_counts') int? updatedCount});
}

/// @nodoc
class _$GnCardHdrResCopyWithImpl<$Res, $Val extends GnCardHdrRes>
    implements $GnCardHdrResCopyWith<$Res> {
  _$GnCardHdrResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GnCardHdrRes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? id = freezed,
    Object? status = null,
    Object? yearId = freezed,
    Object? isAproved = freezed,
    Object? generatedDate = freezed,
    Object? createdAt = freezed,
    Object? createdBy = freezed,
    Object? lastUpdatedAt = freezed,
    Object? lastUpdatedBy = freezed,
    Object? updatedCount = freezed,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      yearId: freezed == yearId
          ? _value.yearId
          : yearId // ignore: cast_nullable_to_non_nullable
              as int?,
      isAproved: freezed == isAproved
          ? _value.isAproved
          : isAproved // ignore: cast_nullable_to_non_nullable
              as bool?,
      generatedDate: freezed == generatedDate
          ? _value.generatedDate
          : generatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      lastUpdatedAt: freezed == lastUpdatedAt
          ? _value.lastUpdatedAt
          : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdatedBy: freezed == lastUpdatedBy
          ? _value.lastUpdatedBy
          : lastUpdatedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedCount: freezed == updatedCount
          ? _value.updatedCount
          : updatedCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GnCardHdrResImplCopyWith<$Res>
    implements $GnCardHdrResCopyWith<$Res> {
  factory _$$GnCardHdrResImplCopyWith(
          _$GnCardHdrResImpl value, $Res Function(_$GnCardHdrResImpl) then) =
      __$$GnCardHdrResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      int? id,
      @JsonKey(name: 'is_active') bool status,
      @JsonKey(name: 'year_id') int? yearId,
      @JsonKey(name: 'is_aproved') bool? isAproved,
      @JsonKey(name: 'generated_date') DateTime? generatedDate,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'created_by') int? createdBy,
      @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt,
      @JsonKey(name: 'last_updated_by') int? lastUpdatedBy,
      @JsonKey(name: 'update_counts') int? updatedCount});
}

/// @nodoc
class __$$GnCardHdrResImplCopyWithImpl<$Res>
    extends _$GnCardHdrResCopyWithImpl<$Res, _$GnCardHdrResImpl>
    implements _$$GnCardHdrResImplCopyWith<$Res> {
  __$$GnCardHdrResImplCopyWithImpl(
      _$GnCardHdrResImpl _value, $Res Function(_$GnCardHdrResImpl) _then)
      : super(_value, _then);

  /// Create a copy of GnCardHdrRes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? id = freezed,
    Object? status = null,
    Object? yearId = freezed,
    Object? isAproved = freezed,
    Object? generatedDate = freezed,
    Object? createdAt = freezed,
    Object? createdBy = freezed,
    Object? lastUpdatedAt = freezed,
    Object? lastUpdatedBy = freezed,
    Object? updatedCount = freezed,
  }) {
    return _then(_$GnCardHdrResImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      yearId: freezed == yearId
          ? _value.yearId
          : yearId // ignore: cast_nullable_to_non_nullable
              as int?,
      isAproved: freezed == isAproved
          ? _value.isAproved
          : isAproved // ignore: cast_nullable_to_non_nullable
              as bool?,
      generatedDate: freezed == generatedDate
          ? _value.generatedDate
          : generatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      lastUpdatedAt: freezed == lastUpdatedAt
          ? _value.lastUpdatedAt
          : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdatedBy: freezed == lastUpdatedBy
          ? _value.lastUpdatedBy
          : lastUpdatedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedCount: freezed == updatedCount
          ? _value.updatedCount
          : updatedCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GnCardHdrResImpl implements _GnCardHdrRes {
  const _$GnCardHdrResImpl(
      {this.description = '',
      this.id,
      @JsonKey(name: 'is_active') required this.status,
      @JsonKey(name: 'year_id') this.yearId,
      @JsonKey(name: 'is_aproved') this.isAproved,
      @JsonKey(name: 'generated_date') this.generatedDate,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'created_by') this.createdBy,
      @JsonKey(name: 'last_updated_at') this.lastUpdatedAt,
      @JsonKey(name: 'last_updated_by') this.lastUpdatedBy,
      @JsonKey(name: 'update_counts') this.updatedCount});

  factory _$GnCardHdrResImpl.fromJson(Map<String, dynamic> json) =>
      _$$GnCardHdrResImplFromJson(json);

  @override
  @JsonKey()
  final String description;
  @override
  final int? id;
  @override
  @JsonKey(name: 'is_active')
  final bool status;
  @override
  @JsonKey(name: 'year_id')
  final int? yearId;
  @override
  @JsonKey(name: 'is_aproved')
  final bool? isAproved;
  @override
  @JsonKey(name: 'generated_date')
  final DateTime? generatedDate;
//
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'created_by')
  final int? createdBy;
  @override
  @JsonKey(name: 'last_updated_at')
  final DateTime? lastUpdatedAt;
  @override
  @JsonKey(name: 'last_updated_by')
  final int? lastUpdatedBy;
  @override
  @JsonKey(name: 'update_counts')
  final int? updatedCount;

  @override
  String toString() {
    return 'GnCardHdrRes(description: $description, id: $id, status: $status, yearId: $yearId, isAproved: $isAproved, generatedDate: $generatedDate, createdAt: $createdAt, createdBy: $createdBy, lastUpdatedAt: $lastUpdatedAt, lastUpdatedBy: $lastUpdatedBy, updatedCount: $updatedCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GnCardHdrResImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.yearId, yearId) || other.yearId == yearId) &&
            (identical(other.isAproved, isAproved) ||
                other.isAproved == isAproved) &&
            (identical(other.generatedDate, generatedDate) ||
                other.generatedDate == generatedDate) &&
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
      description,
      id,
      status,
      yearId,
      isAproved,
      generatedDate,
      createdAt,
      createdBy,
      lastUpdatedAt,
      lastUpdatedBy,
      updatedCount);

  /// Create a copy of GnCardHdrRes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GnCardHdrResImplCopyWith<_$GnCardHdrResImpl> get copyWith =>
      __$$GnCardHdrResImplCopyWithImpl<_$GnCardHdrResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GnCardHdrResImplToJson(
      this,
    );
  }
}

abstract class _GnCardHdrRes implements GnCardHdrRes {
  const factory _GnCardHdrRes(
          {final String description,
          final int? id,
          @JsonKey(name: 'is_active') required final bool status,
          @JsonKey(name: 'year_id') final int? yearId,
          @JsonKey(name: 'is_aproved') final bool? isAproved,
          @JsonKey(name: 'generated_date') final DateTime? generatedDate,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'created_by') final int? createdBy,
          @JsonKey(name: 'last_updated_at') final DateTime? lastUpdatedAt,
          @JsonKey(name: 'last_updated_by') final int? lastUpdatedBy,
          @JsonKey(name: 'update_counts') final int? updatedCount}) =
      _$GnCardHdrResImpl;

  factory _GnCardHdrRes.fromJson(Map<String, dynamic> json) =
      _$GnCardHdrResImpl.fromJson;

  @override
  String get description;
  @override
  int? get id;
  @override
  @JsonKey(name: 'is_active')
  bool get status;
  @override
  @JsonKey(name: 'year_id')
  int? get yearId;
  @override
  @JsonKey(name: 'is_aproved')
  bool? get isAproved;
  @override
  @JsonKey(name: 'generated_date')
  DateTime? get generatedDate; //
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'created_by')
  int? get createdBy;
  @override
  @JsonKey(name: 'last_updated_at')
  DateTime? get lastUpdatedAt;
  @override
  @JsonKey(name: 'last_updated_by')
  int? get lastUpdatedBy;
  @override
  @JsonKey(name: 'update_counts')
  int? get updatedCount;

  /// Create a copy of GnCardHdrRes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GnCardHdrResImplCopyWith<_$GnCardHdrResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GnCardHdrData _$GnCardHdrDataFromJson(Map<String, dynamic> json) {
  return _GnCardHdrData.fromJson(json);
}

/// @nodoc
mixin _$GnCardHdrData {
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'generated_date')
  DateTime? get generatedDate => throw _privateConstructorUsedError;

  /// Serializes this GnCardHdrData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GnCardHdrData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GnCardHdrDataCopyWith<GnCardHdrData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GnCardHdrDataCopyWith<$Res> {
  factory $GnCardHdrDataCopyWith(
          GnCardHdrData value, $Res Function(GnCardHdrData) then) =
      _$GnCardHdrDataCopyWithImpl<$Res, GnCardHdrData>;
  @useResult
  $Res call(
      {String description,
      @JsonKey(name: 'is_active') bool status,
      @JsonKey(name: 'generated_date') DateTime? generatedDate});
}

/// @nodoc
class _$GnCardHdrDataCopyWithImpl<$Res, $Val extends GnCardHdrData>
    implements $GnCardHdrDataCopyWith<$Res> {
  _$GnCardHdrDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GnCardHdrData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? status = null,
    Object? generatedDate = freezed,
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
      generatedDate: freezed == generatedDate
          ? _value.generatedDate
          : generatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GnCardHdrDataImplCopyWith<$Res>
    implements $GnCardHdrDataCopyWith<$Res> {
  factory _$$GnCardHdrDataImplCopyWith(
          _$GnCardHdrDataImpl value, $Res Function(_$GnCardHdrDataImpl) then) =
      __$$GnCardHdrDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      @JsonKey(name: 'is_active') bool status,
      @JsonKey(name: 'generated_date') DateTime? generatedDate});
}

/// @nodoc
class __$$GnCardHdrDataImplCopyWithImpl<$Res>
    extends _$GnCardHdrDataCopyWithImpl<$Res, _$GnCardHdrDataImpl>
    implements _$$GnCardHdrDataImplCopyWith<$Res> {
  __$$GnCardHdrDataImplCopyWithImpl(
      _$GnCardHdrDataImpl _value, $Res Function(_$GnCardHdrDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GnCardHdrData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? status = null,
    Object? generatedDate = freezed,
  }) {
    return _then(_$GnCardHdrDataImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      generatedDate: freezed == generatedDate
          ? _value.generatedDate
          : generatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GnCardHdrDataImpl implements _GnCardHdrData {
  const _$GnCardHdrDataImpl(
      {this.description = '',
      @JsonKey(name: 'is_active') this.status = true,
      @JsonKey(name: 'generated_date') this.generatedDate});

  factory _$GnCardHdrDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GnCardHdrDataImplFromJson(json);

  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey(name: 'is_active')
  final bool status;
  @override
  @JsonKey(name: 'generated_date')
  final DateTime? generatedDate;

  @override
  String toString() {
    return 'GnCardHdrData(description: $description, status: $status, generatedDate: $generatedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GnCardHdrDataImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.generatedDate, generatedDate) ||
                other.generatedDate == generatedDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, description, status, generatedDate);

  /// Create a copy of GnCardHdrData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GnCardHdrDataImplCopyWith<_$GnCardHdrDataImpl> get copyWith =>
      __$$GnCardHdrDataImplCopyWithImpl<_$GnCardHdrDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GnCardHdrDataImplToJson(
      this,
    );
  }
}

abstract class _GnCardHdrData implements GnCardHdrData {
  const factory _GnCardHdrData(
          {final String description,
          @JsonKey(name: 'is_active') final bool status,
          @JsonKey(name: 'generated_date') final DateTime? generatedDate}) =
      _$GnCardHdrDataImpl;

  factory _GnCardHdrData.fromJson(Map<String, dynamic> json) =
      _$GnCardHdrDataImpl.fromJson;

  @override
  String get description;
  @override
  @JsonKey(name: 'is_active')
  bool get status;
  @override
  @JsonKey(name: 'generated_date')
  DateTime? get generatedDate;

  /// Create a copy of GnCardHdrData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GnCardHdrDataImplCopyWith<_$GnCardHdrDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
