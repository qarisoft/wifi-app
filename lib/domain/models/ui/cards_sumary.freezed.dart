// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cards_sumary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CardsSummery _$CardsSummeryFromJson(Map<String, dynamic> json) {
  return _CardsSummery.fromJson(json);
}

/// @nodoc
mixin _$CardsSummery {
  String get item => throw _privateConstructorUsedError;
  int get avilable => throw _privateConstructorUsedError;
  int get soled => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this CardsSummery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CardsSummery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CardsSummeryCopyWith<CardsSummery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardsSummeryCopyWith<$Res> {
  factory $CardsSummeryCopyWith(
          CardsSummery value, $Res Function(CardsSummery) then) =
      _$CardsSummeryCopyWithImpl<$Res, CardsSummery>;
  @useResult
  $Res call({String item, int avilable, int soled, int total});
}

/// @nodoc
class _$CardsSummeryCopyWithImpl<$Res, $Val extends CardsSummery>
    implements $CardsSummeryCopyWith<$Res> {
  _$CardsSummeryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardsSummery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? avilable = null,
    Object? soled = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String,
      avilable: null == avilable
          ? _value.avilable
          : avilable // ignore: cast_nullable_to_non_nullable
              as int,
      soled: null == soled
          ? _value.soled
          : soled // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardsSummeryImplCopyWith<$Res>
    implements $CardsSummeryCopyWith<$Res> {
  factory _$$CardsSummeryImplCopyWith(
          _$CardsSummeryImpl value, $Res Function(_$CardsSummeryImpl) then) =
      __$$CardsSummeryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String item, int avilable, int soled, int total});
}

/// @nodoc
class __$$CardsSummeryImplCopyWithImpl<$Res>
    extends _$CardsSummeryCopyWithImpl<$Res, _$CardsSummeryImpl>
    implements _$$CardsSummeryImplCopyWith<$Res> {
  __$$CardsSummeryImplCopyWithImpl(
      _$CardsSummeryImpl _value, $Res Function(_$CardsSummeryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardsSummery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? avilable = null,
    Object? soled = null,
    Object? total = null,
  }) {
    return _then(_$CardsSummeryImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String,
      avilable: null == avilable
          ? _value.avilable
          : avilable // ignore: cast_nullable_to_non_nullable
              as int,
      soled: null == soled
          ? _value.soled
          : soled // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardsSummeryImpl implements _CardsSummery {
  const _$CardsSummeryImpl(
      {required this.item,
      required this.avilable,
      required this.soled,
      required this.total});

  factory _$CardsSummeryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardsSummeryImplFromJson(json);

  @override
  final String item;
  @override
  final int avilable;
  @override
  final int soled;
  @override
  final int total;

  @override
  String toString() {
    return 'CardsSummery(item: $item, avilable: $avilable, soled: $soled, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardsSummeryImpl &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.avilable, avilable) ||
                other.avilable == avilable) &&
            (identical(other.soled, soled) || other.soled == soled) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, item, avilable, soled, total);

  /// Create a copy of CardsSummery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardsSummeryImplCopyWith<_$CardsSummeryImpl> get copyWith =>
      __$$CardsSummeryImplCopyWithImpl<_$CardsSummeryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardsSummeryImplToJson(
      this,
    );
  }
}

abstract class _CardsSummery implements CardsSummery {
  const factory _CardsSummery(
      {required final String item,
      required final int avilable,
      required final int soled,
      required final int total}) = _$CardsSummeryImpl;

  factory _CardsSummery.fromJson(Map<String, dynamic> json) =
      _$CardsSummeryImpl.fromJson;

  @override
  String get item;
  @override
  int get avilable;
  @override
  int get soled;
  @override
  int get total;

  /// Create a copy of CardsSummery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardsSummeryImplCopyWith<_$CardsSummeryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
