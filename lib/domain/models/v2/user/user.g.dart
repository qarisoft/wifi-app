// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      userName: json['username'] as String,
      loginPwd: json['login_pwd'] as String,
      name: json['name'] as String? ?? '',
      createdAt: DateTime.parse(json['created_at'] as String),
      status: json['is_active'] as bool,
      profileImg: json['profile_img'] as String?,
      lastLoginDate: json['last_logged_in_date'] == null
          ? null
          : DateTime.parse(json['last_logged_in_date'] as String),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.userName,
      'login_pwd': instance.loginPwd,
      'name': instance.name,
      'created_at': instance.createdAt.toIso8601String(),
      'is_active': instance.status,
      'profile_img': instance.profileImg,
      'last_logged_in_date': instance.lastLoginDate?.toIso8601String(),
      'description': instance.description,
    };

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      userName: json['username'] as String,
      loginPwd: json['login_pwd'] as String,
      name: json['name'] as String? ?? '',
      status: json['is_active'] as bool?,
      profileImg: json['profile_img'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'username': instance.userName,
      'login_pwd': instance.loginPwd,
      'name': instance.name,
      'is_active': instance.status,
      'profile_img': instance.profileImg,
      'description': instance.description,
    };

_$UserResImpl _$$UserResImplFromJson(Map<String, dynamic> json) =>
    _$UserResImpl(
      id: (json['id'] as num?)?.toInt(),
      userName: json['username'] as String?,
      loginPwd: json['login_pwd'] as String?,
      name: json['name'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      status: json['is_active'] as bool?,
      profileImg: json['profile_img'] as String?,
      lastLoginDate: json['last_logged_in_date'] == null
          ? null
          : DateTime.parse(json['last_logged_in_date'] as String),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$UserResImplToJson(_$UserResImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.userName,
      'login_pwd': instance.loginPwd,
      'name': instance.name,
      'created_at': instance.createdAt?.toIso8601String(),
      'is_active': instance.status,
      'profile_img': instance.profileImg,
      'last_logged_in_date': instance.lastLoginDate?.toIso8601String(),
      'description': instance.description,
    };
