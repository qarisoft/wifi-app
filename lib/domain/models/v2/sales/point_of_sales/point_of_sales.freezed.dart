// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'point_of_sales.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PointOfSale _$PointOfSaleFromJson(Map<String, dynamic> json) {
  return _PointOfSale.fromJson(json);
}

/// @nodoc
mixin _$PointOfSale {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get periorty => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get status => throw _privateConstructorUsedError; //
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  int get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated_at')
  DateTime? get lastUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated_by')
  int? get lastUpdatedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'update_counts')
  int get updatedCount => throw _privateConstructorUsedError;

  /// Serializes this PointOfSale to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PointOfSale
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PointOfSaleCopyWith<PointOfSale> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointOfSaleCopyWith<$Res> {
  factory $PointOfSaleCopyWith(
          PointOfSale value, $Res Function(PointOfSale) then) =
      _$PointOfSaleCopyWithImpl<$Res, PointOfSale>;
  @useResult
  $Res call(
      {int id,
      String name,
      String phone,
      String? location,
      String? description,
      int? periorty,
      @JsonKey(name: 'is_active') bool status,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'created_by') int createdBy,
      @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt,
      @JsonKey(name: 'last_updated_by') int? lastUpdatedBy,
      @JsonKey(name: 'update_counts') int updatedCount});
}

/// @nodoc
class _$PointOfSaleCopyWithImpl<$Res, $Val extends PointOfSale>
    implements $PointOfSaleCopyWith<$Res> {
  _$PointOfSaleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PointOfSale
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? location = freezed,
    Object? description = freezed,
    Object? periorty = freezed,
    Object? status = null,
    Object? createdAt = null,
    Object? createdBy = null,
    Object? lastUpdatedAt = freezed,
    Object? lastUpdatedBy = freezed,
    Object? updatedCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      periorty: freezed == periorty
          ? _value.periorty
          : periorty // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
      lastUpdatedBy: freezed == lastUpdatedBy
          ? _value.lastUpdatedBy
          : lastUpdatedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedCount: null == updatedCount
          ? _value.updatedCount
          : updatedCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PointOfSaleImplCopyWith<$Res>
    implements $PointOfSaleCopyWith<$Res> {
  factory _$$PointOfSaleImplCopyWith(
          _$PointOfSaleImpl value, $Res Function(_$PointOfSaleImpl) then) =
      __$$PointOfSaleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String phone,
      String? location,
      String? description,
      int? periorty,
      @JsonKey(name: 'is_active') bool status,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'created_by') int createdBy,
      @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt,
      @JsonKey(name: 'last_updated_by') int? lastUpdatedBy,
      @JsonKey(name: 'update_counts') int updatedCount});
}

/// @nodoc
class __$$PointOfSaleImplCopyWithImpl<$Res>
    extends _$PointOfSaleCopyWithImpl<$Res, _$PointOfSaleImpl>
    implements _$$PointOfSaleImplCopyWith<$Res> {
  __$$PointOfSaleImplCopyWithImpl(
      _$PointOfSaleImpl _value, $Res Function(_$PointOfSaleImpl) _then)
      : super(_value, _then);

  /// Create a copy of PointOfSale
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? location = freezed,
    Object? description = freezed,
    Object? periorty = freezed,
    Object? status = null,
    Object? createdAt = null,
    Object? createdBy = null,
    Object? lastUpdatedAt = freezed,
    Object? lastUpdatedBy = freezed,
    Object? updatedCount = null,
  }) {
    return _then(_$PointOfSaleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      periorty: freezed == periorty
          ? _value.periorty
          : periorty // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
      lastUpdatedBy: freezed == lastUpdatedBy
          ? _value.lastUpdatedBy
          : lastUpdatedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedCount: null == updatedCount
          ? _value.updatedCount
          : updatedCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PointOfSaleImpl implements _PointOfSale {
  const _$PointOfSaleImpl(
      {required this.id,
      required this.name,
      this.phone = '',
      this.location,
      this.description,
      this.periorty,
      @JsonKey(name: 'is_active') required this.status,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'created_by') this.createdBy = 0,
      @JsonKey(name: 'last_updated_at') this.lastUpdatedAt,
      @JsonKey(name: 'last_updated_by') this.lastUpdatedBy,
      @JsonKey(name: 'update_counts') this.updatedCount = 0});

  factory _$PointOfSaleImpl.fromJson(Map<String, dynamic> json) =>
      _$$PointOfSaleImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey()
  final String phone;
  @override
  final String? location;
  @override
  final String? description;
  @override
  final int? periorty;
  @override
  @JsonKey(name: 'is_active')
  final bool status;
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
  final int? lastUpdatedBy;
  @override
  @JsonKey(name: 'update_counts')
  final int updatedCount;

  @override
  String toString() {
    return 'PointOfSale(id: $id, name: $name, phone: $phone, location: $location, description: $description, periorty: $periorty, status: $status, createdAt: $createdAt, createdBy: $createdBy, lastUpdatedAt: $lastUpdatedAt, lastUpdatedBy: $lastUpdatedBy, updatedCount: $updatedCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PointOfSaleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.periorty, periorty) ||
                other.periorty == periorty) &&
            (identical(other.status, status) || other.status == status) &&
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
      name,
      phone,
      location,
      description,
      periorty,
      status,
      createdAt,
      createdBy,
      lastUpdatedAt,
      lastUpdatedBy,
      updatedCount);

  /// Create a copy of PointOfSale
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PointOfSaleImplCopyWith<_$PointOfSaleImpl> get copyWith =>
      __$$PointOfSaleImplCopyWithImpl<_$PointOfSaleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PointOfSaleImplToJson(
      this,
    );
  }
}

abstract class _PointOfSale implements PointOfSale {
  const factory _PointOfSale(
          {required final int id,
          required final String name,
          final String phone,
          final String? location,
          final String? description,
          final int? periorty,
          @JsonKey(name: 'is_active') required final bool status,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'created_by') final int createdBy,
          @JsonKey(name: 'last_updated_at') final DateTime? lastUpdatedAt,
          @JsonKey(name: 'last_updated_by') final int? lastUpdatedBy,
          @JsonKey(name: 'update_counts') final int updatedCount}) =
      _$PointOfSaleImpl;

  factory _PointOfSale.fromJson(Map<String, dynamic> json) =
      _$PointOfSaleImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  String? get location;
  @override
  String? get description;
  @override
  int? get periorty;
  @override
  @JsonKey(name: 'is_active')
  bool get status; //
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
  int? get lastUpdatedBy;
  @override
  @JsonKey(name: 'update_counts')
  int get updatedCount;

  /// Create a copy of PointOfSale
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PointOfSaleImplCopyWith<_$PointOfSaleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PointOfSlsData _$PointOfSlsDataFromJson(Map<String, dynamic> json) {
  return _PointOfSlsData.fromJson(json);
}

/// @nodoc
mixin _$PointOfSlsData {
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get periorty => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get status => throw _privateConstructorUsedError;

  /// Serializes this PointOfSlsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PointOfSlsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PointOfSlsDataCopyWith<PointOfSlsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointOfSlsDataCopyWith<$Res> {
  factory $PointOfSlsDataCopyWith(
          PointOfSlsData value, $Res Function(PointOfSlsData) then) =
      _$PointOfSlsDataCopyWithImpl<$Res, PointOfSlsData>;
  @useResult
  $Res call(
      {String name,
      String phone,
      String? location,
      String? description,
      int? periorty,
      @JsonKey(name: 'is_active') bool status});
}

/// @nodoc
class _$PointOfSlsDataCopyWithImpl<$Res, $Val extends PointOfSlsData>
    implements $PointOfSlsDataCopyWith<$Res> {
  _$PointOfSlsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PointOfSlsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? location = freezed,
    Object? description = freezed,
    Object? periorty = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      periorty: freezed == periorty
          ? _value.periorty
          : periorty // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PointOfSlsDataImplCopyWith<$Res>
    implements $PointOfSlsDataCopyWith<$Res> {
  factory _$$PointOfSlsDataImplCopyWith(_$PointOfSlsDataImpl value,
          $Res Function(_$PointOfSlsDataImpl) then) =
      __$$PointOfSlsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String phone,
      String? location,
      String? description,
      int? periorty,
      @JsonKey(name: 'is_active') bool status});
}

/// @nodoc
class __$$PointOfSlsDataImplCopyWithImpl<$Res>
    extends _$PointOfSlsDataCopyWithImpl<$Res, _$PointOfSlsDataImpl>
    implements _$$PointOfSlsDataImplCopyWith<$Res> {
  __$$PointOfSlsDataImplCopyWithImpl(
      _$PointOfSlsDataImpl _value, $Res Function(_$PointOfSlsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PointOfSlsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? location = freezed,
    Object? description = freezed,
    Object? periorty = freezed,
    Object? status = null,
  }) {
    return _then(_$PointOfSlsDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      periorty: freezed == periorty
          ? _value.periorty
          : periorty // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PointOfSlsDataImpl implements _PointOfSlsData {
  const _$PointOfSlsDataImpl(
      {required this.name,
      required this.phone,
      this.location,
      this.description,
      this.periorty,
      @JsonKey(name: 'is_active') this.status = true});

  factory _$PointOfSlsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PointOfSlsDataImplFromJson(json);

  @override
  final String name;
  @override
  final String phone;
  @override
  final String? location;
  @override
  final String? description;
  @override
  final int? periorty;
  @override
  @JsonKey(name: 'is_active')
  final bool status;

  @override
  String toString() {
    return 'PointOfSlsData(name: $name, phone: $phone, location: $location, description: $description, periorty: $periorty, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PointOfSlsDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.periorty, periorty) ||
                other.periorty == periorty) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, phone, location, description, periorty, status);

  /// Create a copy of PointOfSlsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PointOfSlsDataImplCopyWith<_$PointOfSlsDataImpl> get copyWith =>
      __$$PointOfSlsDataImplCopyWithImpl<_$PointOfSlsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PointOfSlsDataImplToJson(
      this,
    );
  }
}

abstract class _PointOfSlsData implements PointOfSlsData {
  const factory _PointOfSlsData(
      {required final String name,
      required final String phone,
      final String? location,
      final String? description,
      final int? periorty,
      @JsonKey(name: 'is_active') final bool status}) = _$PointOfSlsDataImpl;

  factory _PointOfSlsData.fromJson(Map<String, dynamic> json) =
      _$PointOfSlsDataImpl.fromJson;

  @override
  String get name;
  @override
  String get phone;
  @override
  String? get location;
  @override
  String? get description;
  @override
  int? get periorty;
  @override
  @JsonKey(name: 'is_active')
  bool get status;

  /// Create a copy of PointOfSlsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PointOfSlsDataImplCopyWith<_$PointOfSlsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
