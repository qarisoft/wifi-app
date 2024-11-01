// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'year.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Year _$YearFromJson(Map<String, dynamic> json) {
  return _Year.fromJson(json);
}

/// @nodoc
mixin _$Year {
  int get id => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  bool get isCurrent => throw _privateConstructorUsedError; //
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError; //
  int get openedBy => throw _privateConstructorUsedError;
  DateTime get openedOn => throw _privateConstructorUsedError;
  String get openDescription => throw _privateConstructorUsedError;

  /// Serializes this Year to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Year
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $YearCopyWith<Year> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YearCopyWith<$Res> {
  factory $YearCopyWith(Year value, $Res Function(Year) then) =
      _$YearCopyWithImpl<$Res, Year>;
  @useResult
  $Res call(
      {int id,
      int status,
      bool isCurrent,
      DateTime startDate,
      DateTime endDate,
      int openedBy,
      DateTime openedOn,
      String openDescription});
}

/// @nodoc
class _$YearCopyWithImpl<$Res, $Val extends Year>
    implements $YearCopyWith<$Res> {
  _$YearCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Year
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? isCurrent = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? openedBy = null,
    Object? openedOn = null,
    Object? openDescription = null,
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
      isCurrent: null == isCurrent
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as bool,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      openedBy: null == openedBy
          ? _value.openedBy
          : openedBy // ignore: cast_nullable_to_non_nullable
              as int,
      openedOn: null == openedOn
          ? _value.openedOn
          : openedOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      openDescription: null == openDescription
          ? _value.openDescription
          : openDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YearImplCopyWith<$Res> implements $YearCopyWith<$Res> {
  factory _$$YearImplCopyWith(
          _$YearImpl value, $Res Function(_$YearImpl) then) =
      __$$YearImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int status,
      bool isCurrent,
      DateTime startDate,
      DateTime endDate,
      int openedBy,
      DateTime openedOn,
      String openDescription});
}

/// @nodoc
class __$$YearImplCopyWithImpl<$Res>
    extends _$YearCopyWithImpl<$Res, _$YearImpl>
    implements _$$YearImplCopyWith<$Res> {
  __$$YearImplCopyWithImpl(_$YearImpl _value, $Res Function(_$YearImpl) _then)
      : super(_value, _then);

  /// Create a copy of Year
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? isCurrent = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? openedBy = null,
    Object? openedOn = null,
    Object? openDescription = null,
  }) {
    return _then(_$YearImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      isCurrent: null == isCurrent
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as bool,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      openedBy: null == openedBy
          ? _value.openedBy
          : openedBy // ignore: cast_nullable_to_non_nullable
              as int,
      openedOn: null == openedOn
          ? _value.openedOn
          : openedOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      openDescription: null == openDescription
          ? _value.openDescription
          : openDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YearImpl implements _Year {
  const _$YearImpl(
      {required this.id,
      required this.status,
      required this.isCurrent,
      required this.startDate,
      required this.endDate,
      required this.openedBy,
      required this.openedOn,
      required this.openDescription});

  factory _$YearImpl.fromJson(Map<String, dynamic> json) =>
      _$$YearImplFromJson(json);

  @override
  final int id;
  @override
  final int status;
  @override
  final bool isCurrent;
//
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
//
  @override
  final int openedBy;
  @override
  final DateTime openedOn;
  @override
  final String openDescription;

  @override
  String toString() {
    return 'Year(id: $id, status: $status, isCurrent: $isCurrent, startDate: $startDate, endDate: $endDate, openedBy: $openedBy, openedOn: $openedOn, openDescription: $openDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YearImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isCurrent, isCurrent) ||
                other.isCurrent == isCurrent) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.openedBy, openedBy) ||
                other.openedBy == openedBy) &&
            (identical(other.openedOn, openedOn) ||
                other.openedOn == openedOn) &&
            (identical(other.openDescription, openDescription) ||
                other.openDescription == openDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, isCurrent, startDate,
      endDate, openedBy, openedOn, openDescription);

  /// Create a copy of Year
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$YearImplCopyWith<_$YearImpl> get copyWith =>
      __$$YearImplCopyWithImpl<_$YearImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YearImplToJson(
      this,
    );
  }
}

abstract class _Year implements Year {
  const factory _Year(
      {required final int id,
      required final int status,
      required final bool isCurrent,
      required final DateTime startDate,
      required final DateTime endDate,
      required final int openedBy,
      required final DateTime openedOn,
      required final String openDescription}) = _$YearImpl;

  factory _Year.fromJson(Map<String, dynamic> json) = _$YearImpl.fromJson;

  @override
  int get id;
  @override
  int get status;
  @override
  bool get isCurrent; //
  @override
  DateTime get startDate;
  @override
  DateTime get endDate; //
  @override
  int get openedBy;
  @override
  DateTime get openedOn;
  @override
  String get openDescription;

  /// Create a copy of Year
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$YearImplCopyWith<_$YearImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
