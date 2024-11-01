// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      loginId: (json['loginId'] as num).toInt(),
      loginPwd: json['loginPwd'] as String,
      name: json['name'] as String? ?? '',
      lastLoginDate: DateTime.parse(json['lastLoginDate'] as String),
      status: (json['status'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'loginId': instance.loginId,
      'loginPwd': instance.loginPwd,
      'name': instance.name,
      'lastLoginDate': instance.lastLoginDate.toIso8601String(),
      'status': instance.status,
    };
