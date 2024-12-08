// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'login_pwd')
  String get loginPwd => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_img')
  String? get profileImg => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_logged_in_date')
  DateTime? get lastLoginDate => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'username') String userName,
      @JsonKey(name: 'login_pwd') String loginPwd,
      String name,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'is_active') bool status,
      @JsonKey(name: 'profile_img') String? profileImg,
      @JsonKey(name: 'last_logged_in_date') DateTime? lastLoginDate,
      String? description});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? loginPwd = null,
    Object? name = null,
    Object? createdAt = null,
    Object? status = null,
    Object? profileImg = freezed,
    Object? lastLoginDate = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      loginPwd: null == loginPwd
          ? _value.loginPwd
          : loginPwd // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      profileImg: freezed == profileImg
          ? _value.profileImg
          : profileImg // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLoginDate: freezed == lastLoginDate
          ? _value.lastLoginDate
          : lastLoginDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'username') String userName,
      @JsonKey(name: 'login_pwd') String loginPwd,
      String name,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'is_active') bool status,
      @JsonKey(name: 'profile_img') String? profileImg,
      @JsonKey(name: 'last_logged_in_date') DateTime? lastLoginDate,
      String? description});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? loginPwd = null,
    Object? name = null,
    Object? createdAt = null,
    Object? status = null,
    Object? profileImg = freezed,
    Object? lastLoginDate = freezed,
    Object? description = freezed,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      loginPwd: null == loginPwd
          ? _value.loginPwd
          : loginPwd // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      profileImg: freezed == profileImg
          ? _value.profileImg
          : profileImg // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLoginDate: freezed == lastLoginDate
          ? _value.lastLoginDate
          : lastLoginDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.id,
      @JsonKey(name: 'username') required this.userName,
      @JsonKey(name: 'login_pwd') required this.loginPwd,
      this.name = '',
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'is_active') required this.status,
      @JsonKey(name: 'profile_img') this.profileImg,
      @JsonKey(name: 'last_logged_in_date') this.lastLoginDate,
      this.description});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'username')
  final String userName;
  @override
  @JsonKey(name: 'login_pwd')
  final String loginPwd;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'is_active')
  final bool status;
  @override
  @JsonKey(name: 'profile_img')
  final String? profileImg;
  @override
  @JsonKey(name: 'last_logged_in_date')
  final DateTime? lastLoginDate;
  @override
  final String? description;

  @override
  String toString() {
    return 'User(id: $id, userName: $userName, loginPwd: $loginPwd, name: $name, createdAt: $createdAt, status: $status, profileImg: $profileImg, lastLoginDate: $lastLoginDate, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.loginPwd, loginPwd) ||
                other.loginPwd == loginPwd) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.profileImg, profileImg) ||
                other.profileImg == profileImg) &&
            (identical(other.lastLoginDate, lastLoginDate) ||
                other.lastLoginDate == lastLoginDate) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userName, loginPwd, name,
      createdAt, status, profileImg, lastLoginDate, description);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final int id,
      @JsonKey(name: 'username') required final String userName,
      @JsonKey(name: 'login_pwd') required final String loginPwd,
      final String name,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'is_active') required final bool status,
      @JsonKey(name: 'profile_img') final String? profileImg,
      @JsonKey(name: 'last_logged_in_date') final DateTime? lastLoginDate,
      final String? description}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'username')
  String get userName;
  @override
  @JsonKey(name: 'login_pwd')
  String get loginPwd;
  @override
  String get name;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'is_active')
  bool get status;
  @override
  @JsonKey(name: 'profile_img')
  String? get profileImg;
  @override
  @JsonKey(name: 'last_logged_in_date')
  DateTime? get lastLoginDate;
  @override
  String? get description;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  @JsonKey(name: 'username')
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'login_pwd')
  String get loginPwd => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_img')
  String? get profileImg => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this UserData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String userName,
      @JsonKey(name: 'login_pwd') String loginPwd,
      String name,
      @JsonKey(name: 'is_active') bool? status,
      @JsonKey(name: 'profile_img') String? profileImg,
      String? description});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? loginPwd = null,
    Object? name = null,
    Object? status = freezed,
    Object? profileImg = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      loginPwd: null == loginPwd
          ? _value.loginPwd
          : loginPwd // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      profileImg: freezed == profileImg
          ? _value.profileImg
          : profileImg // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
          _$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String userName,
      @JsonKey(name: 'login_pwd') String loginPwd,
      String name,
      @JsonKey(name: 'is_active') bool? status,
      @JsonKey(name: 'profile_img') String? profileImg,
      String? description});
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
      _$UserDataImpl _value, $Res Function(_$UserDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? loginPwd = null,
    Object? name = null,
    Object? status = freezed,
    Object? profileImg = freezed,
    Object? description = freezed,
  }) {
    return _then(_$UserDataImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      loginPwd: null == loginPwd
          ? _value.loginPwd
          : loginPwd // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      profileImg: freezed == profileImg
          ? _value.profileImg
          : profileImg // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserDataImpl implements _UserData {
  const _$UserDataImpl(
      {@JsonKey(name: 'username') required this.userName,
      @JsonKey(name: 'login_pwd') required this.loginPwd,
      this.name = '',
      @JsonKey(name: 'is_active') this.status,
      @JsonKey(name: 'profile_img') this.profileImg,
      this.description});

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String userName;
  @override
  @JsonKey(name: 'login_pwd')
  final String loginPwd;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey(name: 'is_active')
  final bool? status;
  @override
  @JsonKey(name: 'profile_img')
  final String? profileImg;
  @override
  final String? description;

  @override
  String toString() {
    return 'UserData(userName: $userName, loginPwd: $loginPwd, name: $name, status: $status, profileImg: $profileImg, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.loginPwd, loginPwd) ||
                other.loginPwd == loginPwd) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.profileImg, profileImg) ||
                other.profileImg == profileImg) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, userName, loginPwd, name, status, profileImg, description);

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {@JsonKey(name: 'username') required final String userName,
      @JsonKey(name: 'login_pwd') required final String loginPwd,
      final String name,
      @JsonKey(name: 'is_active') final bool? status,
      @JsonKey(name: 'profile_img') final String? profileImg,
      final String? description}) = _$UserDataImpl;

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

  @override
  @JsonKey(name: 'username')
  String get userName;
  @override
  @JsonKey(name: 'login_pwd')
  String get loginPwd;
  @override
  String get name;
  @override
  @JsonKey(name: 'is_active')
  bool? get status;
  @override
  @JsonKey(name: 'profile_img')
  String? get profileImg;
  @override
  String? get description;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserRes _$UserResFromJson(Map<String, dynamic> json) {
  return _UserRes.fromJson(json);
}

/// @nodoc
mixin _$UserRes {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'login_pwd')
  String? get loginPwd => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_img')
  String? get profileImg => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_logged_in_date')
  DateTime? get lastLoginDate => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this UserRes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserResCopyWith<UserRes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResCopyWith<$Res> {
  factory $UserResCopyWith(UserRes value, $Res Function(UserRes) then) =
      _$UserResCopyWithImpl<$Res, UserRes>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'username') String? userName,
      @JsonKey(name: 'login_pwd') String? loginPwd,
      String? name,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'is_active') bool? status,
      @JsonKey(name: 'profile_img') String? profileImg,
      @JsonKey(name: 'last_logged_in_date') DateTime? lastLoginDate,
      String? description});
}

/// @nodoc
class _$UserResCopyWithImpl<$Res, $Val extends UserRes>
    implements $UserResCopyWith<$Res> {
  _$UserResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? loginPwd = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? status = freezed,
    Object? profileImg = freezed,
    Object? lastLoginDate = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      loginPwd: freezed == loginPwd
          ? _value.loginPwd
          : loginPwd // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      profileImg: freezed == profileImg
          ? _value.profileImg
          : profileImg // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLoginDate: freezed == lastLoginDate
          ? _value.lastLoginDate
          : lastLoginDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserResImplCopyWith<$Res> implements $UserResCopyWith<$Res> {
  factory _$$UserResImplCopyWith(
          _$UserResImpl value, $Res Function(_$UserResImpl) then) =
      __$$UserResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'username') String? userName,
      @JsonKey(name: 'login_pwd') String? loginPwd,
      String? name,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'is_active') bool? status,
      @JsonKey(name: 'profile_img') String? profileImg,
      @JsonKey(name: 'last_logged_in_date') DateTime? lastLoginDate,
      String? description});
}

/// @nodoc
class __$$UserResImplCopyWithImpl<$Res>
    extends _$UserResCopyWithImpl<$Res, _$UserResImpl>
    implements _$$UserResImplCopyWith<$Res> {
  __$$UserResImplCopyWithImpl(
      _$UserResImpl _value, $Res Function(_$UserResImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? loginPwd = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? status = freezed,
    Object? profileImg = freezed,
    Object? lastLoginDate = freezed,
    Object? description = freezed,
  }) {
    return _then(_$UserResImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      loginPwd: freezed == loginPwd
          ? _value.loginPwd
          : loginPwd // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      profileImg: freezed == profileImg
          ? _value.profileImg
          : profileImg // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLoginDate: freezed == lastLoginDate
          ? _value.lastLoginDate
          : lastLoginDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserResImpl implements _UserRes {
  const _$UserResImpl(
      {this.id,
      @JsonKey(name: 'username') this.userName,
      @JsonKey(name: 'login_pwd') this.loginPwd,
      this.name,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'is_active') this.status,
      @JsonKey(name: 'profile_img') this.profileImg,
      @JsonKey(name: 'last_logged_in_date') this.lastLoginDate,
      this.description});

  factory _$UserResImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserResImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'username')
  final String? userName;
  @override
  @JsonKey(name: 'login_pwd')
  final String? loginPwd;
  @override
  final String? name;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'is_active')
  final bool? status;
  @override
  @JsonKey(name: 'profile_img')
  final String? profileImg;
  @override
  @JsonKey(name: 'last_logged_in_date')
  final DateTime? lastLoginDate;
  @override
  final String? description;

  @override
  String toString() {
    return 'UserRes(id: $id, userName: $userName, loginPwd: $loginPwd, name: $name, createdAt: $createdAt, status: $status, profileImg: $profileImg, lastLoginDate: $lastLoginDate, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.loginPwd, loginPwd) ||
                other.loginPwd == loginPwd) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.profileImg, profileImg) ||
                other.profileImg == profileImg) &&
            (identical(other.lastLoginDate, lastLoginDate) ||
                other.lastLoginDate == lastLoginDate) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userName, loginPwd, name,
      createdAt, status, profileImg, lastLoginDate, description);

  /// Create a copy of UserRes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserResImplCopyWith<_$UserResImpl> get copyWith =>
      __$$UserResImplCopyWithImpl<_$UserResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResImplToJson(
      this,
    );
  }
}

abstract class _UserRes implements UserRes {
  const factory _UserRes(
      {final int? id,
      @JsonKey(name: 'username') final String? userName,
      @JsonKey(name: 'login_pwd') final String? loginPwd,
      final String? name,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'is_active') final bool? status,
      @JsonKey(name: 'profile_img') final String? profileImg,
      @JsonKey(name: 'last_logged_in_date') final DateTime? lastLoginDate,
      final String? description}) = _$UserResImpl;

  factory _UserRes.fromJson(Map<String, dynamic> json) = _$UserResImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'username')
  String? get userName;
  @override
  @JsonKey(name: 'login_pwd')
  String? get loginPwd;
  @override
  String? get name;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'is_active')
  bool? get status;
  @override
  @JsonKey(name: 'profile_img')
  String? get profileImg;
  @override
  @JsonKey(name: 'last_logged_in_date')
  DateTime? get lastLoginDate;
  @override
  String? get description;

  /// Create a copy of UserRes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserResImplCopyWith<_$UserResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
