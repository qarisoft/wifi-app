// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Card _$CardFromJson(Map<String, dynamic> json) {
  return _Card.fromJson(json);
}

/// @nodoc
mixin _$Card {
  int get speed => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get status => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'band_width')
  int? get bandWidth => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_free')
  bool get isFree => throw _privateConstructorUsedError; //
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  int get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated_at')
  DateTime? get lastupdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated_by')
  int get lastupdatedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'update_counts')
  int get updatedCount => throw _privateConstructorUsedError;

  /// Serializes this Card to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CardCopyWith<Card> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardCopyWith<$Res> {
  factory $CardCopyWith(Card value, $Res Function(Card) then) =
      _$CardCopyWithImpl<$Res, Card>;
  @useResult
  $Res call(
      {int speed,
      int id,
      double price,
      @JsonKey(name: 'is_active') bool status,
      String name,
      String code,
      @JsonKey(name: 'band_width') int? bandWidth,
      @JsonKey(name: 'is_free') bool isFree,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'created_by') int createdBy,
      @JsonKey(name: 'last_updated_at') DateTime? lastupdatedAt,
      @JsonKey(name: 'last_updated_by') int lastupdatedBy,
      @JsonKey(name: 'update_counts') int updatedCount});
}

/// @nodoc
class _$CardCopyWithImpl<$Res, $Val extends Card>
    implements $CardCopyWith<$Res> {
  _$CardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
    Object? id = null,
    Object? price = null,
    Object? status = null,
    Object? name = null,
    Object? code = null,
    Object? bandWidth = freezed,
    Object? isFree = null,
    Object? createdAt = null,
    Object? createdBy = null,
    Object? lastupdatedAt = freezed,
    Object? lastupdatedBy = null,
    Object? updatedCount = null,
  }) {
    return _then(_value.copyWith(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      bandWidth: freezed == bandWidth
          ? _value.bandWidth
          : bandWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
      lastupdatedAt: freezed == lastupdatedAt
          ? _value.lastupdatedAt
          : lastupdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$$CardImplCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$$CardImplCopyWith(
          _$CardImpl value, $Res Function(_$CardImpl) then) =
      __$$CardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int speed,
      int id,
      double price,
      @JsonKey(name: 'is_active') bool status,
      String name,
      String code,
      @JsonKey(name: 'band_width') int? bandWidth,
      @JsonKey(name: 'is_free') bool isFree,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'created_by') int createdBy,
      @JsonKey(name: 'last_updated_at') DateTime? lastupdatedAt,
      @JsonKey(name: 'last_updated_by') int lastupdatedBy,
      @JsonKey(name: 'update_counts') int updatedCount});
}

/// @nodoc
class __$$CardImplCopyWithImpl<$Res>
    extends _$CardCopyWithImpl<$Res, _$CardImpl>
    implements _$$CardImplCopyWith<$Res> {
  __$$CardImplCopyWithImpl(_$CardImpl _value, $Res Function(_$CardImpl) _then)
      : super(_value, _then);

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
    Object? id = null,
    Object? price = null,
    Object? status = null,
    Object? name = null,
    Object? code = null,
    Object? bandWidth = freezed,
    Object? isFree = null,
    Object? createdAt = null,
    Object? createdBy = null,
    Object? lastupdatedAt = freezed,
    Object? lastupdatedBy = null,
    Object? updatedCount = null,
  }) {
    return _then(_$CardImpl(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      bandWidth: freezed == bandWidth
          ? _value.bandWidth
          : bandWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
      lastupdatedAt: freezed == lastupdatedAt
          ? _value.lastupdatedAt
          : lastupdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
class _$CardImpl implements _Card {
  const _$CardImpl(
      {this.speed = 0,
      required this.id,
      required this.price,
      @JsonKey(name: 'is_active') required this.status,
      this.name = '',
      this.code = '',
      @JsonKey(name: 'band_width') this.bandWidth,
      @JsonKey(name: 'is_free') required this.isFree,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'created_by') required this.createdBy,
      @JsonKey(name: 'last_updated_at') this.lastupdatedAt,
      @JsonKey(name: 'last_updated_by') required this.lastupdatedBy,
      @JsonKey(name: 'update_counts') required this.updatedCount});

  factory _$CardImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardImplFromJson(json);

  @override
  @JsonKey()
  final int speed;
  @override
  final int id;
  @override
  final double price;
  @override
  @JsonKey(name: 'is_active')
  final bool status;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey(name: 'band_width')
  final int? bandWidth;
  @override
  @JsonKey(name: 'is_free')
  final bool isFree;
//
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'created_by')
  final int createdBy;
  @override
  @JsonKey(name: 'last_updated_at')
  final DateTime? lastupdatedAt;
  @override
  @JsonKey(name: 'last_updated_by')
  final int lastupdatedBy;
  @override
  @JsonKey(name: 'update_counts')
  final int updatedCount;

  @override
  String toString() {
    return 'Card(speed: $speed, id: $id, price: $price, status: $status, name: $name, code: $code, bandWidth: $bandWidth, isFree: $isFree, createdAt: $createdAt, createdBy: $createdBy, lastupdatedAt: $lastupdatedAt, lastupdatedBy: $lastupdatedBy, updatedCount: $updatedCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardImpl &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.bandWidth, bandWidth) ||
                other.bandWidth == bandWidth) &&
            (identical(other.isFree, isFree) || other.isFree == isFree) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.lastupdatedAt, lastupdatedAt) ||
                other.lastupdatedAt == lastupdatedAt) &&
            (identical(other.lastupdatedBy, lastupdatedBy) ||
                other.lastupdatedBy == lastupdatedBy) &&
            (identical(other.updatedCount, updatedCount) ||
                other.updatedCount == updatedCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      speed,
      id,
      price,
      status,
      name,
      code,
      bandWidth,
      isFree,
      createdAt,
      createdBy,
      lastupdatedAt,
      lastupdatedBy,
      updatedCount);

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardImplCopyWith<_$CardImpl> get copyWith =>
      __$$CardImplCopyWithImpl<_$CardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardImplToJson(
      this,
    );
  }
}

abstract class _Card implements Card {
  const factory _Card(
          {final int speed,
          required final int id,
          required final double price,
          @JsonKey(name: 'is_active') required final bool status,
          final String name,
          final String code,
          @JsonKey(name: 'band_width') final int? bandWidth,
          @JsonKey(name: 'is_free') required final bool isFree,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'created_by') required final int createdBy,
          @JsonKey(name: 'last_updated_at') final DateTime? lastupdatedAt,
          @JsonKey(name: 'last_updated_by') required final int lastupdatedBy,
          @JsonKey(name: 'update_counts') required final int updatedCount}) =
      _$CardImpl;

  factory _Card.fromJson(Map<String, dynamic> json) = _$CardImpl.fromJson;

  @override
  int get speed;
  @override
  int get id;
  @override
  double get price;
  @override
  @JsonKey(name: 'is_active')
  bool get status;
  @override
  String get name;
  @override
  String get code;
  @override
  @JsonKey(name: 'band_width')
  int? get bandWidth;
  @override
  @JsonKey(name: 'is_free')
  bool get isFree; //
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'created_by')
  int get createdBy;
  @override
  @JsonKey(name: 'last_updated_at')
  DateTime? get lastupdatedAt;
  @override
  @JsonKey(name: 'last_updated_by')
  int get lastupdatedBy;
  @override
  @JsonKey(name: 'update_counts')
  int get updatedCount;

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardImplCopyWith<_$CardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CardData _$CardDataFromJson(Map<String, dynamic> json) {
  return _CardData.fromJson(json);
}

/// @nodoc
mixin _$CardData {
  double get price => throw _privateConstructorUsedError;
  int get speed => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'band_width')
  int? get bandWidth => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_free')
  bool? get isFree => throw _privateConstructorUsedError;

  /// Serializes this CardData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CardDataCopyWith<CardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardDataCopyWith<$Res> {
  factory $CardDataCopyWith(CardData value, $Res Function(CardData) then) =
      _$CardDataCopyWithImpl<$Res, CardData>;
  @useResult
  $Res call(
      {double price,
      int speed,
      String name,
      String code,
      @JsonKey(name: 'is_active') bool? status,
      @JsonKey(name: 'band_width') int? bandWidth,
      @JsonKey(name: 'is_free') bool? isFree});
}

/// @nodoc
class _$CardDataCopyWithImpl<$Res, $Val extends CardData>
    implements $CardDataCopyWith<$Res> {
  _$CardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? speed = null,
    Object? name = null,
    Object? code = null,
    Object? status = freezed,
    Object? bandWidth = freezed,
    Object? isFree = freezed,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      bandWidth: freezed == bandWidth
          ? _value.bandWidth
          : bandWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      isFree: freezed == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardDataImplCopyWith<$Res>
    implements $CardDataCopyWith<$Res> {
  factory _$$CardDataImplCopyWith(
          _$CardDataImpl value, $Res Function(_$CardDataImpl) then) =
      __$$CardDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double price,
      int speed,
      String name,
      String code,
      @JsonKey(name: 'is_active') bool? status,
      @JsonKey(name: 'band_width') int? bandWidth,
      @JsonKey(name: 'is_free') bool? isFree});
}

/// @nodoc
class __$$CardDataImplCopyWithImpl<$Res>
    extends _$CardDataCopyWithImpl<$Res, _$CardDataImpl>
    implements _$$CardDataImplCopyWith<$Res> {
  __$$CardDataImplCopyWithImpl(
      _$CardDataImpl _value, $Res Function(_$CardDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? speed = null,
    Object? name = null,
    Object? code = null,
    Object? status = freezed,
    Object? bandWidth = freezed,
    Object? isFree = freezed,
  }) {
    return _then(_$CardDataImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      bandWidth: freezed == bandWidth
          ? _value.bandWidth
          : bandWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      isFree: freezed == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardDataImpl implements _CardData {
  const _$CardDataImpl(
      {required this.price,
      this.speed = 0,
      required this.name,
      required this.code,
      @JsonKey(name: 'is_active') this.status,
      @JsonKey(name: 'band_width') this.bandWidth,
      @JsonKey(name: 'is_free') this.isFree});

  factory _$CardDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardDataImplFromJson(json);

  @override
  final double price;
  @override
  @JsonKey()
  final int speed;
  @override
  final String name;
  @override
  final String code;
  @override
  @JsonKey(name: 'is_active')
  final bool? status;
  @override
  @JsonKey(name: 'band_width')
  final int? bandWidth;
  @override
  @JsonKey(name: 'is_free')
  final bool? isFree;

  @override
  String toString() {
    return 'CardData(price: $price, speed: $speed, name: $name, code: $code, status: $status, bandWidth: $bandWidth, isFree: $isFree)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardDataImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.bandWidth, bandWidth) ||
                other.bandWidth == bandWidth) &&
            (identical(other.isFree, isFree) || other.isFree == isFree));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, price, speed, name, code, status, bandWidth, isFree);

  /// Create a copy of CardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardDataImplCopyWith<_$CardDataImpl> get copyWith =>
      __$$CardDataImplCopyWithImpl<_$CardDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardDataImplToJson(
      this,
    );
  }
}

abstract class _CardData implements CardData {
  const factory _CardData(
      {required final double price,
      final int speed,
      required final String name,
      required final String code,
      @JsonKey(name: 'is_active') final bool? status,
      @JsonKey(name: 'band_width') final int? bandWidth,
      @JsonKey(name: 'is_free') final bool? isFree}) = _$CardDataImpl;

  factory _CardData.fromJson(Map<String, dynamic> json) =
      _$CardDataImpl.fromJson;

  @override
  double get price;
  @override
  int get speed;
  @override
  String get name;
  @override
  String get code;
  @override
  @JsonKey(name: 'is_active')
  bool? get status;
  @override
  @JsonKey(name: 'band_width')
  int? get bandWidth;
  @override
  @JsonKey(name: 'is_free')
  bool? get isFree;

  /// Create a copy of CardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardDataImplCopyWith<_$CardDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
