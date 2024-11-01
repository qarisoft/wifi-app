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
  int get id => throw _privateConstructorUsedError; //
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError; //
  int get periorty => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError; //
  DateTime get createdOn => throw _privateConstructorUsedError;
  int get createdBy => throw _privateConstructorUsedError;
  DateTime get lastupdatedOn => throw _privateConstructorUsedError;
  int get lastupdatedBy => throw _privateConstructorUsedError;
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
      String location,
      String description,
      int periorty,
      int status,
      DateTime createdOn,
      int createdBy,
      DateTime lastupdatedOn,
      int lastupdatedBy,
      int updatedCount});
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
    Object? location = null,
    Object? description = null,
    Object? periorty = null,
    Object? status = null,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      periorty: null == periorty
          ? _value.periorty
          : periorty // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
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
      String location,
      String description,
      int periorty,
      int status,
      DateTime createdOn,
      int createdBy,
      DateTime lastupdatedOn,
      int lastupdatedBy,
      int updatedCount});
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
    Object? location = null,
    Object? description = null,
    Object? periorty = null,
    Object? status = null,
    Object? createdOn = null,
    Object? createdBy = null,
    Object? lastupdatedOn = null,
    Object? lastupdatedBy = null,
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
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      periorty: null == periorty
          ? _value.periorty
          : periorty // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$PointOfSaleImpl implements _PointOfSale {
  const _$PointOfSaleImpl(
      {required this.id,
      required this.name,
      required this.phone,
      required this.location,
      required this.description,
      required this.periorty,
      required this.status,
      required this.createdOn,
      required this.createdBy,
      required this.lastupdatedOn,
      required this.lastupdatedBy,
      required this.updatedCount});

  factory _$PointOfSaleImpl.fromJson(Map<String, dynamic> json) =>
      _$$PointOfSaleImplFromJson(json);

  @override
  final int id;
//
  @override
  final String name;
  @override
  final String phone;
  @override
  final String location;
  @override
  final String description;
//
  @override
  final int periorty;
  @override
  final int status;
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
    return 'PointOfSale(id: $id, name: $name, phone: $phone, location: $location, description: $description, periorty: $periorty, status: $status, createdOn: $createdOn, createdBy: $createdBy, lastupdatedOn: $lastupdatedOn, lastupdatedBy: $lastupdatedBy, updatedCount: $updatedCount)';
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
      name,
      phone,
      location,
      description,
      periorty,
      status,
      createdOn,
      createdBy,
      lastupdatedOn,
      lastupdatedBy,
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
      required final String phone,
      required final String location,
      required final String description,
      required final int periorty,
      required final int status,
      required final DateTime createdOn,
      required final int createdBy,
      required final DateTime lastupdatedOn,
      required final int lastupdatedBy,
      required final int updatedCount}) = _$PointOfSaleImpl;

  factory _PointOfSale.fromJson(Map<String, dynamic> json) =
      _$PointOfSaleImpl.fromJson;

  @override
  int get id; //
  @override
  String get name;
  @override
  String get phone;
  @override
  String get location;
  @override
  String get description; //
  @override
  int get periorty;
  @override
  int get status; //
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

  /// Create a copy of PointOfSale
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PointOfSaleImplCopyWith<_$PointOfSaleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
