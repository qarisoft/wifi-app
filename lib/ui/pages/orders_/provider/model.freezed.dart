// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderHdrWithDtls _$OrderHdrWithDtlsFromJson(Map<String, dynamic> json) {
  return _OrderHdrWithDtls.fromJson(json);
}

/// @nodoc
mixin _$OrderHdrWithDtls {
  SalesOrderHeader get header => throw _privateConstructorUsedError;
  List<SalesOrderDtl> get details => throw _privateConstructorUsedError;

  /// Serializes this OrderHdrWithDtls to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderHdrWithDtls
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderHdrWithDtlsCopyWith<OrderHdrWithDtls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHdrWithDtlsCopyWith<$Res> {
  factory $OrderHdrWithDtlsCopyWith(
          OrderHdrWithDtls value, $Res Function(OrderHdrWithDtls) then) =
      _$OrderHdrWithDtlsCopyWithImpl<$Res, OrderHdrWithDtls>;
  @useResult
  $Res call({SalesOrderHeader header, List<SalesOrderDtl> details});

  $SalesOrderHeaderCopyWith<$Res> get header;
}

/// @nodoc
class _$OrderHdrWithDtlsCopyWithImpl<$Res, $Val extends OrderHdrWithDtls>
    implements $OrderHdrWithDtlsCopyWith<$Res> {
  _$OrderHdrWithDtlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderHdrWithDtls
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = null,
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as SalesOrderHeader,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<SalesOrderDtl>,
    ) as $Val);
  }

  /// Create a copy of OrderHdrWithDtls
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SalesOrderHeaderCopyWith<$Res> get header {
    return $SalesOrderHeaderCopyWith<$Res>(_value.header, (value) {
      return _then(_value.copyWith(header: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderHdrWithDtlsImplCopyWith<$Res>
    implements $OrderHdrWithDtlsCopyWith<$Res> {
  factory _$$OrderHdrWithDtlsImplCopyWith(_$OrderHdrWithDtlsImpl value,
          $Res Function(_$OrderHdrWithDtlsImpl) then) =
      __$$OrderHdrWithDtlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SalesOrderHeader header, List<SalesOrderDtl> details});

  @override
  $SalesOrderHeaderCopyWith<$Res> get header;
}

/// @nodoc
class __$$OrderHdrWithDtlsImplCopyWithImpl<$Res>
    extends _$OrderHdrWithDtlsCopyWithImpl<$Res, _$OrderHdrWithDtlsImpl>
    implements _$$OrderHdrWithDtlsImplCopyWith<$Res> {
  __$$OrderHdrWithDtlsImplCopyWithImpl(_$OrderHdrWithDtlsImpl _value,
      $Res Function(_$OrderHdrWithDtlsImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderHdrWithDtls
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = null,
    Object? details = null,
  }) {
    return _then(_$OrderHdrWithDtlsImpl(
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as SalesOrderHeader,
      details: null == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<SalesOrderDtl>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$OrderHdrWithDtlsImpl implements _OrderHdrWithDtls {
  const _$OrderHdrWithDtlsImpl(
      {required this.header, required final List<SalesOrderDtl> details})
      : _details = details;

  factory _$OrderHdrWithDtlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderHdrWithDtlsImplFromJson(json);

  @override
  final SalesOrderHeader header;
  final List<SalesOrderDtl> _details;
  @override
  List<SalesOrderDtl> get details {
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_details);
  }

  @override
  String toString() {
    return 'OrderHdrWithDtls(header: $header, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderHdrWithDtlsImpl &&
            (identical(other.header, header) || other.header == header) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, header, const DeepCollectionEquality().hash(_details));

  /// Create a copy of OrderHdrWithDtls
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderHdrWithDtlsImplCopyWith<_$OrderHdrWithDtlsImpl> get copyWith =>
      __$$OrderHdrWithDtlsImplCopyWithImpl<_$OrderHdrWithDtlsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderHdrWithDtlsImplToJson(
      this,
    );
  }
}

abstract class _OrderHdrWithDtls implements OrderHdrWithDtls {
  const factory _OrderHdrWithDtls(
      {required final SalesOrderHeader header,
      required final List<SalesOrderDtl> details}) = _$OrderHdrWithDtlsImpl;

  factory _OrderHdrWithDtls.fromJson(Map<String, dynamic> json) =
      _$OrderHdrWithDtlsImpl.fromJson;

  @override
  SalesOrderHeader get header;
  @override
  List<SalesOrderDtl> get details;

  /// Create a copy of OrderHdrWithDtls
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderHdrWithDtlsImplCopyWith<_$OrderHdrWithDtlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
