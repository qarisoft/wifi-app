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
  int get status => throw _privateConstructorUsedError;
  int get yearID => throw _privateConstructorUsedError;
  int get orderType => throw _privateConstructorUsedError; //
  String get description => throw _privateConstructorUsedError; //
  DateTime get createdOn => throw _privateConstructorUsedError;
  DateTime get orderDate => throw _privateConstructorUsedError;

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
      int status,
      int yearID,
      int orderType,
      String description,
      DateTime createdOn,
      DateTime orderDate});
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
    Object? yearID = null,
    Object? orderType = null,
    Object? description = null,
    Object? createdOn = null,
    Object? orderDate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      yearID: null == yearID
          ? _value.yearID
          : yearID // ignore: cast_nullable_to_non_nullable
              as int,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      int status,
      int yearID,
      int orderType,
      String description,
      DateTime createdOn,
      DateTime orderDate});
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
    Object? yearID = null,
    Object? orderType = null,
    Object? description = null,
    Object? createdOn = null,
    Object? orderDate = null,
  }) {
    return _then(_$SalesOrderHeaderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      yearID: null == yearID
          ? _value.yearID
          : yearID // ignore: cast_nullable_to_non_nullable
              as int,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesOrderHeaderImpl implements _SalesOrderHeader {
  const _$SalesOrderHeaderImpl(
      {required this.id,
      required this.status,
      required this.yearID,
      required this.orderType,
      required this.description,
      required this.createdOn,
      required this.orderDate});

  factory _$SalesOrderHeaderImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesOrderHeaderImplFromJson(json);

  @override
  final int id;
  @override
  final int status;
  @override
  final int yearID;
  @override
  final int orderType;
//
  @override
  final String description;
//
  @override
  final DateTime createdOn;
  @override
  final DateTime orderDate;

  @override
  String toString() {
    return 'SalesOrderHeader(id: $id, status: $status, yearID: $yearID, orderType: $orderType, description: $description, createdOn: $createdOn, orderDate: $orderDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesOrderHeaderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.yearID, yearID) || other.yearID == yearID) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, yearID, orderType,
      description, createdOn, orderDate);

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
      required final int status,
      required final int yearID,
      required final int orderType,
      required final String description,
      required final DateTime createdOn,
      required final DateTime orderDate}) = _$SalesOrderHeaderImpl;

  factory _SalesOrderHeader.fromJson(Map<String, dynamic> json) =
      _$SalesOrderHeaderImpl.fromJson;

  @override
  int get id;
  @override
  int get status;
  @override
  int get yearID;
  @override
  int get orderType; //
  @override
  String get description; //
  @override
  DateTime get createdOn;
  @override
  DateTime get orderDate;

  /// Create a copy of SalesOrderHeader
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalesOrderHeaderImplCopyWith<_$SalesOrderHeaderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
