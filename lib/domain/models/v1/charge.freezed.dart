// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'charge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Charge {
  int get id => throw _privateConstructorUsedError;
  int get inQnt => throw _privateConstructorUsedError;
  int get outQnt => throw _privateConstructorUsedError;
  int get productId => throw _privateConstructorUsedError;

  /// Create a copy of Charge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChargeCopyWith<Charge> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargeCopyWith<$Res> {
  factory $ChargeCopyWith(Charge value, $Res Function(Charge) then) =
      _$ChargeCopyWithImpl<$Res, Charge>;
  @useResult
  $Res call({int id, int inQnt, int outQnt, int productId});
}

/// @nodoc
class _$ChargeCopyWithImpl<$Res, $Val extends Charge>
    implements $ChargeCopyWith<$Res> {
  _$ChargeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Charge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? inQnt = null,
    Object? outQnt = null,
    Object? productId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      inQnt: null == inQnt
          ? _value.inQnt
          : inQnt // ignore: cast_nullable_to_non_nullable
              as int,
      outQnt: null == outQnt
          ? _value.outQnt
          : outQnt // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChargeImplCopyWith<$Res> implements $ChargeCopyWith<$Res> {
  factory _$$ChargeImplCopyWith(
          _$ChargeImpl value, $Res Function(_$ChargeImpl) then) =
      __$$ChargeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int inQnt, int outQnt, int productId});
}

/// @nodoc
class __$$ChargeImplCopyWithImpl<$Res>
    extends _$ChargeCopyWithImpl<$Res, _$ChargeImpl>
    implements _$$ChargeImplCopyWith<$Res> {
  __$$ChargeImplCopyWithImpl(
      _$ChargeImpl _value, $Res Function(_$ChargeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Charge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? inQnt = null,
    Object? outQnt = null,
    Object? productId = null,
  }) {
    return _then(_$ChargeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      inQnt: null == inQnt
          ? _value.inQnt
          : inQnt // ignore: cast_nullable_to_non_nullable
              as int,
      outQnt: null == outQnt
          ? _value.outQnt
          : outQnt // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChargeImpl implements _Charge {
  const _$ChargeImpl(
      {required this.id,
      this.inQnt = 0,
      this.outQnt = 0,
      required this.productId});

  @override
  final int id;
  @override
  @JsonKey()
  final int inQnt;
  @override
  @JsonKey()
  final int outQnt;
  @override
  final int productId;

  @override
  String toString() {
    return 'Charge(id: $id, inQnt: $inQnt, outQnt: $outQnt, productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChargeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.inQnt, inQnt) || other.inQnt == inQnt) &&
            (identical(other.outQnt, outQnt) || other.outQnt == outQnt) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, inQnt, outQnt, productId);

  /// Create a copy of Charge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeImplCopyWith<_$ChargeImpl> get copyWith =>
      __$$ChargeImplCopyWithImpl<_$ChargeImpl>(this, _$identity);
}

abstract class _Charge implements Charge {
  const factory _Charge(
      {required final int id,
      final int inQnt,
      final int outQnt,
      required final int productId}) = _$ChargeImpl;

  @override
  int get id;
  @override
  int get inQnt;
  @override
  int get outQnt;
  @override
  int get productId;

  /// Create a copy of Charge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChargeImplCopyWith<_$ChargeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
