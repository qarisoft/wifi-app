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
  @JsonKey(name: 'is_active')
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_current_year')
  bool get isCurrent => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  DateTime get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  DateTime get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'opened_by')
  int? get openedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'opened_at')
  DateTime? get openedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'open_description')
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
      @JsonKey(name: 'is_active') bool status,
      @JsonKey(name: 'is_current_year') bool isCurrent,
      @JsonKey(name: 'start_date') DateTime startDate,
      @JsonKey(name: 'end_date') DateTime endDate,
      @JsonKey(name: 'opened_by') int? openedBy,
      @JsonKey(name: 'opened_at') DateTime? openedAt,
      @JsonKey(name: 'open_description') String openDescription});
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
    Object? openedBy = freezed,
    Object? openedAt = freezed,
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
              as bool,
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
      openedBy: freezed == openedBy
          ? _value.openedBy
          : openedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      openedAt: freezed == openedAt
          ? _value.openedAt
          : openedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      @JsonKey(name: 'is_active') bool status,
      @JsonKey(name: 'is_current_year') bool isCurrent,
      @JsonKey(name: 'start_date') DateTime startDate,
      @JsonKey(name: 'end_date') DateTime endDate,
      @JsonKey(name: 'opened_by') int? openedBy,
      @JsonKey(name: 'opened_at') DateTime? openedAt,
      @JsonKey(name: 'open_description') String openDescription});
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
    Object? openedBy = freezed,
    Object? openedAt = freezed,
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
              as bool,
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
      openedBy: freezed == openedBy
          ? _value.openedBy
          : openedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      openedAt: freezed == openedAt
          ? _value.openedAt
          : openedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      openDescription: null == openDescription
          ? _value.openDescription
          : openDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$YearImpl implements _Year {
  const _$YearImpl(
      {required this.id,
      @JsonKey(name: 'is_active') required this.status,
      @JsonKey(name: 'is_current_year') required this.isCurrent,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      @JsonKey(name: 'opened_by') this.openedBy,
      @JsonKey(name: 'opened_at') this.openedAt,
      @JsonKey(name: 'open_description') required this.openDescription});

  factory _$YearImpl.fromJson(Map<String, dynamic> json) =>
      _$$YearImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'is_active')
  final bool status;
  @override
  @JsonKey(name: 'is_current_year')
  final bool isCurrent;
  @override
  @JsonKey(name: 'start_date')
  final DateTime startDate;
  @override
  @JsonKey(name: 'end_date')
  final DateTime endDate;
  @override
  @JsonKey(name: 'opened_by')
  final int? openedBy;
  @override
  @JsonKey(name: 'opened_at')
  final DateTime? openedAt;
  @override
  @JsonKey(name: 'open_description')
  final String openDescription;

  @override
  String toString() {
    return 'Year(id: $id, status: $status, isCurrent: $isCurrent, startDate: $startDate, endDate: $endDate, openedBy: $openedBy, openedAt: $openedAt, openDescription: $openDescription)';
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
            (identical(other.openedAt, openedAt) ||
                other.openedAt == openedAt) &&
            (identical(other.openDescription, openDescription) ||
                other.openDescription == openDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, isCurrent, startDate,
      endDate, openedBy, openedAt, openDescription);

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
      @JsonKey(name: 'is_active') required final bool status,
      @JsonKey(name: 'is_current_year') required final bool isCurrent,
      @JsonKey(name: 'start_date') required final DateTime startDate,
      @JsonKey(name: 'end_date') required final DateTime endDate,
      @JsonKey(name: 'opened_by') final int? openedBy,
      @JsonKey(name: 'opened_at') final DateTime? openedAt,
      @JsonKey(name: 'open_description')
      required final String openDescription}) = _$YearImpl;

  factory _Year.fromJson(Map<String, dynamic> json) = _$YearImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'is_active')
  bool get status;
  @override
  @JsonKey(name: 'is_current_year')
  bool get isCurrent;
  @override
  @JsonKey(name: 'start_date')
  DateTime get startDate;
  @override
  @JsonKey(name: 'end_date')
  DateTime get endDate;
  @override
  @JsonKey(name: 'opened_by')
  int? get openedBy;
  @override
  @JsonKey(name: 'opened_at')
  DateTime? get openedAt;
  @override
  @JsonKey(name: 'open_description')
  String get openDescription;

  /// Create a copy of Year
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$YearImplCopyWith<_$YearImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

YearData _$YearDataFromJson(Map<String, dynamic> json) {
  return _YearData.fromJson(json);
}

/// @nodoc
mixin _$YearData {
  @JsonKey(name: 'is_active')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  DateTime? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  DateTime? get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'opened_at')
  DateTime? get openedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'open_description')
  String? get openDescription => throw _privateConstructorUsedError;

  /// Serializes this YearData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of YearData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $YearDataCopyWith<YearData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YearDataCopyWith<$Res> {
  factory $YearDataCopyWith(YearData value, $Res Function(YearData) then) =
      _$YearDataCopyWithImpl<$Res, YearData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_active') bool? status,
      @JsonKey(name: 'start_date') DateTime? startDate,
      @JsonKey(name: 'end_date') DateTime? endDate,
      @JsonKey(name: 'opened_at') DateTime? openedAt,
      @JsonKey(name: 'open_description') String? openDescription});
}

/// @nodoc
class _$YearDataCopyWithImpl<$Res, $Val extends YearData>
    implements $YearDataCopyWith<$Res> {
  _$YearDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of YearData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? openedAt = freezed,
    Object? openDescription = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      openedAt: freezed == openedAt
          ? _value.openedAt
          : openedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      openDescription: freezed == openDescription
          ? _value.openDescription
          : openDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YearDataImplCopyWith<$Res>
    implements $YearDataCopyWith<$Res> {
  factory _$$YearDataImplCopyWith(
          _$YearDataImpl value, $Res Function(_$YearDataImpl) then) =
      __$$YearDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_active') bool? status,
      @JsonKey(name: 'start_date') DateTime? startDate,
      @JsonKey(name: 'end_date') DateTime? endDate,
      @JsonKey(name: 'opened_at') DateTime? openedAt,
      @JsonKey(name: 'open_description') String? openDescription});
}

/// @nodoc
class __$$YearDataImplCopyWithImpl<$Res>
    extends _$YearDataCopyWithImpl<$Res, _$YearDataImpl>
    implements _$$YearDataImplCopyWith<$Res> {
  __$$YearDataImplCopyWithImpl(
      _$YearDataImpl _value, $Res Function(_$YearDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of YearData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? openedAt = freezed,
    Object? openDescription = freezed,
  }) {
    return _then(_$YearDataImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      openedAt: freezed == openedAt
          ? _value.openedAt
          : openedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      openDescription: freezed == openDescription
          ? _value.openDescription
          : openDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$YearDataImpl implements _YearData {
  const _$YearDataImpl(
      {@JsonKey(name: 'is_active') this.status,
      @JsonKey(name: 'start_date') this.startDate,
      @JsonKey(name: 'end_date') this.endDate,
      @JsonKey(name: 'opened_at') this.openedAt,
      @JsonKey(name: 'open_description') this.openDescription});

  factory _$YearDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$YearDataImplFromJson(json);

  @override
  @JsonKey(name: 'is_active')
  final bool? status;
  @override
  @JsonKey(name: 'start_date')
  final DateTime? startDate;
  @override
  @JsonKey(name: 'end_date')
  final DateTime? endDate;
  @override
  @JsonKey(name: 'opened_at')
  final DateTime? openedAt;
  @override
  @JsonKey(name: 'open_description')
  final String? openDescription;

  @override
  String toString() {
    return 'YearData(status: $status, startDate: $startDate, endDate: $endDate, openedAt: $openedAt, openDescription: $openDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YearDataImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.openedAt, openedAt) ||
                other.openedAt == openedAt) &&
            (identical(other.openDescription, openDescription) ||
                other.openDescription == openDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, startDate, endDate, openedAt, openDescription);

  /// Create a copy of YearData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$YearDataImplCopyWith<_$YearDataImpl> get copyWith =>
      __$$YearDataImplCopyWithImpl<_$YearDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YearDataImplToJson(
      this,
    );
  }
}

abstract class _YearData implements YearData {
  const factory _YearData(
          {@JsonKey(name: 'is_active') final bool? status,
          @JsonKey(name: 'start_date') final DateTime? startDate,
          @JsonKey(name: 'end_date') final DateTime? endDate,
          @JsonKey(name: 'opened_at') final DateTime? openedAt,
          @JsonKey(name: 'open_description') final String? openDescription}) =
      _$YearDataImpl;

  factory _YearData.fromJson(Map<String, dynamic> json) =
      _$YearDataImpl.fromJson;

  @override
  @JsonKey(name: 'is_active')
  bool? get status;
  @override
  @JsonKey(name: 'start_date')
  DateTime? get startDate;
  @override
  @JsonKey(name: 'end_date')
  DateTime? get endDate;
  @override
  @JsonKey(name: 'opened_at')
  DateTime? get openedAt;
  @override
  @JsonKey(name: 'open_description')
  String? get openDescription;

  /// Create a copy of YearData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$YearDataImplCopyWith<_$YearDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
