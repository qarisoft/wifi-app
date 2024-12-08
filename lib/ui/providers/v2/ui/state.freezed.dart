// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppMsg {
  String get msg => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) registered,
    required TResult Function(String msg) logInSuccessfully,
    required TResult Function(String msg) wellDone,
    required TResult Function(String msg) msg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? registered,
    TResult? Function(String msg)? logInSuccessfully,
    TResult? Function(String msg)? wellDone,
    TResult? Function(String msg)? msg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? registered,
    TResult Function(String msg)? logInSuccessfully,
    TResult Function(String msg)? wellDone,
    TResult Function(String msg)? msg,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserCreated value) registered,
    required TResult Function(LogInSuccessfully value) logInSuccessfully,
    required TResult Function(WellDoneMsg value) wellDone,
    required TResult Function(DefaultMsg value) msg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserCreated value)? registered,
    TResult? Function(LogInSuccessfully value)? logInSuccessfully,
    TResult? Function(WellDoneMsg value)? wellDone,
    TResult? Function(DefaultMsg value)? msg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserCreated value)? registered,
    TResult Function(LogInSuccessfully value)? logInSuccessfully,
    TResult Function(WellDoneMsg value)? wellDone,
    TResult Function(DefaultMsg value)? msg,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AppMsg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppMsgCopyWith<AppMsg> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppMsgCopyWith<$Res> {
  factory $AppMsgCopyWith(AppMsg value, $Res Function(AppMsg) then) =
      _$AppMsgCopyWithImpl<$Res, AppMsg>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class _$AppMsgCopyWithImpl<$Res, $Val extends AppMsg>
    implements $AppMsgCopyWith<$Res> {
  _$AppMsgCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppMsg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserCreatedImplCopyWith<$Res>
    implements $AppMsgCopyWith<$Res> {
  factory _$$UserCreatedImplCopyWith(
          _$UserCreatedImpl value, $Res Function(_$UserCreatedImpl) then) =
      __$$UserCreatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$UserCreatedImplCopyWithImpl<$Res>
    extends _$AppMsgCopyWithImpl<$Res, _$UserCreatedImpl>
    implements _$$UserCreatedImplCopyWith<$Res> {
  __$$UserCreatedImplCopyWithImpl(
      _$UserCreatedImpl _value, $Res Function(_$UserCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppMsg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$UserCreatedImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserCreatedImpl implements UserCreated {
  const _$UserCreatedImpl({this.msg = 'User Created Successfully'});

  @override
  @JsonKey()
  final String msg;

  @override
  String toString() {
    return 'AppMsg.registered(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCreatedImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of AppMsg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCreatedImplCopyWith<_$UserCreatedImpl> get copyWith =>
      __$$UserCreatedImplCopyWithImpl<_$UserCreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) registered,
    required TResult Function(String msg) logInSuccessfully,
    required TResult Function(String msg) wellDone,
    required TResult Function(String msg) msg,
  }) {
    return registered(this.msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? registered,
    TResult? Function(String msg)? logInSuccessfully,
    TResult? Function(String msg)? wellDone,
    TResult? Function(String msg)? msg,
  }) {
    return registered?.call(this.msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? registered,
    TResult Function(String msg)? logInSuccessfully,
    TResult Function(String msg)? wellDone,
    TResult Function(String msg)? msg,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(this.msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserCreated value) registered,
    required TResult Function(LogInSuccessfully value) logInSuccessfully,
    required TResult Function(WellDoneMsg value) wellDone,
    required TResult Function(DefaultMsg value) msg,
  }) {
    return registered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserCreated value)? registered,
    TResult? Function(LogInSuccessfully value)? logInSuccessfully,
    TResult? Function(WellDoneMsg value)? wellDone,
    TResult? Function(DefaultMsg value)? msg,
  }) {
    return registered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserCreated value)? registered,
    TResult Function(LogInSuccessfully value)? logInSuccessfully,
    TResult Function(WellDoneMsg value)? wellDone,
    TResult Function(DefaultMsg value)? msg,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(this);
    }
    return orElse();
  }
}

abstract class UserCreated implements AppMsg {
  const factory UserCreated({final String msg}) = _$UserCreatedImpl;

  @override
  String get msg;

  /// Create a copy of AppMsg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserCreatedImplCopyWith<_$UserCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogInSuccessfullyImplCopyWith<$Res>
    implements $AppMsgCopyWith<$Res> {
  factory _$$LogInSuccessfullyImplCopyWith(_$LogInSuccessfullyImpl value,
          $Res Function(_$LogInSuccessfullyImpl) then) =
      __$$LogInSuccessfullyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$LogInSuccessfullyImplCopyWithImpl<$Res>
    extends _$AppMsgCopyWithImpl<$Res, _$LogInSuccessfullyImpl>
    implements _$$LogInSuccessfullyImplCopyWith<$Res> {
  __$$LogInSuccessfullyImplCopyWithImpl(_$LogInSuccessfullyImpl _value,
      $Res Function(_$LogInSuccessfullyImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppMsg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$LogInSuccessfullyImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LogInSuccessfullyImpl implements LogInSuccessfully {
  const _$LogInSuccessfullyImpl({this.msg = 'User Logged in Successfully'});

  @override
  @JsonKey()
  final String msg;

  @override
  String toString() {
    return 'AppMsg.logInSuccessfully(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogInSuccessfullyImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of AppMsg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogInSuccessfullyImplCopyWith<_$LogInSuccessfullyImpl> get copyWith =>
      __$$LogInSuccessfullyImplCopyWithImpl<_$LogInSuccessfullyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) registered,
    required TResult Function(String msg) logInSuccessfully,
    required TResult Function(String msg) wellDone,
    required TResult Function(String msg) msg,
  }) {
    return logInSuccessfully(this.msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? registered,
    TResult? Function(String msg)? logInSuccessfully,
    TResult? Function(String msg)? wellDone,
    TResult? Function(String msg)? msg,
  }) {
    return logInSuccessfully?.call(this.msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? registered,
    TResult Function(String msg)? logInSuccessfully,
    TResult Function(String msg)? wellDone,
    TResult Function(String msg)? msg,
    required TResult orElse(),
  }) {
    if (logInSuccessfully != null) {
      return logInSuccessfully(this.msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserCreated value) registered,
    required TResult Function(LogInSuccessfully value) logInSuccessfully,
    required TResult Function(WellDoneMsg value) wellDone,
    required TResult Function(DefaultMsg value) msg,
  }) {
    return logInSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserCreated value)? registered,
    TResult? Function(LogInSuccessfully value)? logInSuccessfully,
    TResult? Function(WellDoneMsg value)? wellDone,
    TResult? Function(DefaultMsg value)? msg,
  }) {
    return logInSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserCreated value)? registered,
    TResult Function(LogInSuccessfully value)? logInSuccessfully,
    TResult Function(WellDoneMsg value)? wellDone,
    TResult Function(DefaultMsg value)? msg,
    required TResult orElse(),
  }) {
    if (logInSuccessfully != null) {
      return logInSuccessfully(this);
    }
    return orElse();
  }
}

abstract class LogInSuccessfully implements AppMsg {
  const factory LogInSuccessfully({final String msg}) = _$LogInSuccessfullyImpl;

  @override
  String get msg;

  /// Create a copy of AppMsg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogInSuccessfullyImplCopyWith<_$LogInSuccessfullyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WellDoneMsgImplCopyWith<$Res>
    implements $AppMsgCopyWith<$Res> {
  factory _$$WellDoneMsgImplCopyWith(
          _$WellDoneMsgImpl value, $Res Function(_$WellDoneMsgImpl) then) =
      __$$WellDoneMsgImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$WellDoneMsgImplCopyWithImpl<$Res>
    extends _$AppMsgCopyWithImpl<$Res, _$WellDoneMsgImpl>
    implements _$$WellDoneMsgImplCopyWith<$Res> {
  __$$WellDoneMsgImplCopyWithImpl(
      _$WellDoneMsgImpl _value, $Res Function(_$WellDoneMsgImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppMsg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$WellDoneMsgImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WellDoneMsgImpl implements WellDoneMsg {
  const _$WellDoneMsgImpl({this.msg = 'Well Done !!'});

  @override
  @JsonKey()
  final String msg;

  @override
  String toString() {
    return 'AppMsg.wellDone(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WellDoneMsgImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of AppMsg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WellDoneMsgImplCopyWith<_$WellDoneMsgImpl> get copyWith =>
      __$$WellDoneMsgImplCopyWithImpl<_$WellDoneMsgImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) registered,
    required TResult Function(String msg) logInSuccessfully,
    required TResult Function(String msg) wellDone,
    required TResult Function(String msg) msg,
  }) {
    return wellDone(this.msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? registered,
    TResult? Function(String msg)? logInSuccessfully,
    TResult? Function(String msg)? wellDone,
    TResult? Function(String msg)? msg,
  }) {
    return wellDone?.call(this.msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? registered,
    TResult Function(String msg)? logInSuccessfully,
    TResult Function(String msg)? wellDone,
    TResult Function(String msg)? msg,
    required TResult orElse(),
  }) {
    if (wellDone != null) {
      return wellDone(this.msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserCreated value) registered,
    required TResult Function(LogInSuccessfully value) logInSuccessfully,
    required TResult Function(WellDoneMsg value) wellDone,
    required TResult Function(DefaultMsg value) msg,
  }) {
    return wellDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserCreated value)? registered,
    TResult? Function(LogInSuccessfully value)? logInSuccessfully,
    TResult? Function(WellDoneMsg value)? wellDone,
    TResult? Function(DefaultMsg value)? msg,
  }) {
    return wellDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserCreated value)? registered,
    TResult Function(LogInSuccessfully value)? logInSuccessfully,
    TResult Function(WellDoneMsg value)? wellDone,
    TResult Function(DefaultMsg value)? msg,
    required TResult orElse(),
  }) {
    if (wellDone != null) {
      return wellDone(this);
    }
    return orElse();
  }
}

abstract class WellDoneMsg implements AppMsg {
  const factory WellDoneMsg({final String msg}) = _$WellDoneMsgImpl;

  @override
  String get msg;

  /// Create a copy of AppMsg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WellDoneMsgImplCopyWith<_$WellDoneMsgImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DefaultMsgImplCopyWith<$Res>
    implements $AppMsgCopyWith<$Res> {
  factory _$$DefaultMsgImplCopyWith(
          _$DefaultMsgImpl value, $Res Function(_$DefaultMsgImpl) then) =
      __$$DefaultMsgImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$DefaultMsgImplCopyWithImpl<$Res>
    extends _$AppMsgCopyWithImpl<$Res, _$DefaultMsgImpl>
    implements _$$DefaultMsgImplCopyWith<$Res> {
  __$$DefaultMsgImplCopyWithImpl(
      _$DefaultMsgImpl _value, $Res Function(_$DefaultMsgImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppMsg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$DefaultMsgImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DefaultMsgImpl implements DefaultMsg {
  const _$DefaultMsgImpl({this.msg = 'Well Done !!'});

  @override
  @JsonKey()
  final String msg;

  @override
  String toString() {
    return 'AppMsg.msg(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultMsgImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of AppMsg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultMsgImplCopyWith<_$DefaultMsgImpl> get copyWith =>
      __$$DefaultMsgImplCopyWithImpl<_$DefaultMsgImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) registered,
    required TResult Function(String msg) logInSuccessfully,
    required TResult Function(String msg) wellDone,
    required TResult Function(String msg) msg,
  }) {
    return msg(this.msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? registered,
    TResult? Function(String msg)? logInSuccessfully,
    TResult? Function(String msg)? wellDone,
    TResult? Function(String msg)? msg,
  }) {
    return msg?.call(this.msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? registered,
    TResult Function(String msg)? logInSuccessfully,
    TResult Function(String msg)? wellDone,
    TResult Function(String msg)? msg,
    required TResult orElse(),
  }) {
    if (msg != null) {
      return msg(this.msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserCreated value) registered,
    required TResult Function(LogInSuccessfully value) logInSuccessfully,
    required TResult Function(WellDoneMsg value) wellDone,
    required TResult Function(DefaultMsg value) msg,
  }) {
    return msg(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserCreated value)? registered,
    TResult? Function(LogInSuccessfully value)? logInSuccessfully,
    TResult? Function(WellDoneMsg value)? wellDone,
    TResult? Function(DefaultMsg value)? msg,
  }) {
    return msg?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserCreated value)? registered,
    TResult Function(LogInSuccessfully value)? logInSuccessfully,
    TResult Function(WellDoneMsg value)? wellDone,
    TResult Function(DefaultMsg value)? msg,
    required TResult orElse(),
  }) {
    if (msg != null) {
      return msg(this);
    }
    return orElse();
  }
}

abstract class DefaultMsg implements AppMsg {
  const factory DefaultMsg({final String msg}) = _$DefaultMsgImpl;

  @override
  String get msg;

  /// Create a copy of AppMsg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DefaultMsgImplCopyWith<_$DefaultMsgImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthData {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) yes,
    required TResult Function(bool initial) no,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? yes,
    TResult? Function(bool initial)? no,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? yes,
    TResult Function(bool initial)? no,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authinticated value) yes,
    required TResult Function(UnAuthinticated value) no,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authinticated value)? yes,
    TResult? Function(UnAuthinticated value)? no,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authinticated value)? yes,
    TResult Function(UnAuthinticated value)? no,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDataCopyWith<$Res> {
  factory $AuthDataCopyWith(AuthData value, $Res Function(AuthData) then) =
      _$AuthDataCopyWithImpl<$Res, AuthData>;
}

/// @nodoc
class _$AuthDataCopyWithImpl<$Res, $Val extends AuthData>
    implements $AuthDataCopyWith<$Res> {
  _$AuthDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthData
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthinticatedImplCopyWith<$Res> {
  factory _$$AuthinticatedImplCopyWith(
          _$AuthinticatedImpl value, $Res Function(_$AuthinticatedImpl) then) =
      __$$AuthinticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthinticatedImplCopyWithImpl<$Res>
    extends _$AuthDataCopyWithImpl<$Res, _$AuthinticatedImpl>
    implements _$$AuthinticatedImplCopyWith<$Res> {
  __$$AuthinticatedImplCopyWithImpl(
      _$AuthinticatedImpl _value, $Res Function(_$AuthinticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthinticatedImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of AuthData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AuthinticatedImpl implements Authinticated {
  const _$AuthinticatedImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'AuthData.yes(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthinticatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthinticatedImplCopyWith<_$AuthinticatedImpl> get copyWith =>
      __$$AuthinticatedImplCopyWithImpl<_$AuthinticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) yes,
    required TResult Function(bool initial) no,
  }) {
    return yes(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? yes,
    TResult? Function(bool initial)? no,
  }) {
    return yes?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? yes,
    TResult Function(bool initial)? no,
    required TResult orElse(),
  }) {
    if (yes != null) {
      return yes(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authinticated value) yes,
    required TResult Function(UnAuthinticated value) no,
  }) {
    return yes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authinticated value)? yes,
    TResult? Function(UnAuthinticated value)? no,
  }) {
    return yes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authinticated value)? yes,
    TResult Function(UnAuthinticated value)? no,
    required TResult orElse(),
  }) {
    if (yes != null) {
      return yes(this);
    }
    return orElse();
  }
}

abstract class Authinticated implements AuthData {
  const factory Authinticated({required final User user}) = _$AuthinticatedImpl;

  User get user;

  /// Create a copy of AuthData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthinticatedImplCopyWith<_$AuthinticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnAuthinticatedImplCopyWith<$Res> {
  factory _$$UnAuthinticatedImplCopyWith(_$UnAuthinticatedImpl value,
          $Res Function(_$UnAuthinticatedImpl) then) =
      __$$UnAuthinticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool initial});
}

/// @nodoc
class __$$UnAuthinticatedImplCopyWithImpl<$Res>
    extends _$AuthDataCopyWithImpl<$Res, _$UnAuthinticatedImpl>
    implements _$$UnAuthinticatedImplCopyWith<$Res> {
  __$$UnAuthinticatedImplCopyWithImpl(
      _$UnAuthinticatedImpl _value, $Res Function(_$UnAuthinticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initial = null,
  }) {
    return _then(_$UnAuthinticatedImpl(
      initial: null == initial
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UnAuthinticatedImpl implements UnAuthinticated {
  const _$UnAuthinticatedImpl({this.initial = true});

  @override
  @JsonKey()
  final bool initial;

  @override
  String toString() {
    return 'AuthData.no(initial: $initial)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnAuthinticatedImpl &&
            (identical(other.initial, initial) || other.initial == initial));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initial);

  /// Create a copy of AuthData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnAuthinticatedImplCopyWith<_$UnAuthinticatedImpl> get copyWith =>
      __$$UnAuthinticatedImplCopyWithImpl<_$UnAuthinticatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) yes,
    required TResult Function(bool initial) no,
  }) {
    return no(initial);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? yes,
    TResult? Function(bool initial)? no,
  }) {
    return no?.call(initial);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? yes,
    TResult Function(bool initial)? no,
    required TResult orElse(),
  }) {
    if (no != null) {
      return no(initial);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authinticated value) yes,
    required TResult Function(UnAuthinticated value) no,
  }) {
    return no(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authinticated value)? yes,
    TResult? Function(UnAuthinticated value)? no,
  }) {
    return no?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authinticated value)? yes,
    TResult Function(UnAuthinticated value)? no,
    required TResult orElse(),
  }) {
    if (no != null) {
      return no(this);
    }
    return orElse();
  }
}

abstract class UnAuthinticated implements AuthData {
  const factory UnAuthinticated({final bool initial}) = _$UnAuthinticatedImpl;

  bool get initial;

  /// Create a copy of AuthData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnAuthinticatedImplCopyWith<_$UnAuthinticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppUiState {
  AppFailure? get error => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  AppMsg? get message => throw _privateConstructorUsedError;

  /// Create a copy of AppUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppUiStateCopyWith<AppUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUiStateCopyWith<$Res> {
  factory $AppUiStateCopyWith(
          AppUiState value, $Res Function(AppUiState) then) =
      _$AppUiStateCopyWithImpl<$Res, AppUiState>;
  @useResult
  $Res call({AppFailure? error, bool loading, AppMsg? message});

  $AppMsgCopyWith<$Res>? get message;
}

/// @nodoc
class _$AppUiStateCopyWithImpl<$Res, $Val extends AppUiState>
    implements $AppUiStateCopyWith<$Res> {
  _$AppUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? loading = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as AppMsg?,
    ) as $Val);
  }

  /// Create a copy of AppUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppMsgCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $AppMsgCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppUiStateImplCopyWith<$Res>
    implements $AppUiStateCopyWith<$Res> {
  factory _$$AppUiStateImplCopyWith(
          _$AppUiStateImpl value, $Res Function(_$AppUiStateImpl) then) =
      __$$AppUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppFailure? error, bool loading, AppMsg? message});

  @override
  $AppMsgCopyWith<$Res>? get message;
}

/// @nodoc
class __$$AppUiStateImplCopyWithImpl<$Res>
    extends _$AppUiStateCopyWithImpl<$Res, _$AppUiStateImpl>
    implements _$$AppUiStateImplCopyWith<$Res> {
  __$$AppUiStateImplCopyWithImpl(
      _$AppUiStateImpl _value, $Res Function(_$AppUiStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? loading = null,
    Object? message = freezed,
  }) {
    return _then(_$AppUiStateImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as AppMsg?,
    ));
  }
}

/// @nodoc

class _$AppUiStateImpl implements _AppUiState {
  const _$AppUiStateImpl({this.error, required this.loading, this.message});

  @override
  final AppFailure? error;
  @override
  final bool loading;
  @override
  final AppMsg? message;

  @override
  String toString() {
    return 'AppUiState(error: $error, loading: $loading, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUiStateImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, loading, message);

  /// Create a copy of AppUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUiStateImplCopyWith<_$AppUiStateImpl> get copyWith =>
      __$$AppUiStateImplCopyWithImpl<_$AppUiStateImpl>(this, _$identity);
}

abstract class _AppUiState implements AppUiState {
  const factory _AppUiState(
      {final AppFailure? error,
      required final bool loading,
      final AppMsg? message}) = _$AppUiStateImpl;

  @override
  AppFailure? get error;
  @override
  bool get loading;
  @override
  AppMsg? get message;

  /// Create a copy of AppUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppUiStateImplCopyWith<_$AppUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
