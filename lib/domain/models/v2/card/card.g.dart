// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardImpl _$$CardImplFromJson(Map<String, dynamic> json) => _$CardImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      speed: json['speed'] as String,
      bandWidth: json['bandWidth'] as String,
      code: json['code'] as String,
      status: (json['status'] as num).toInt(),
      createdOn: DateTime.parse(json['createdOn'] as String),
      createdBy: (json['createdBy'] as num).toInt(),
      lastupdatedOn: DateTime.parse(json['lastupdatedOn'] as String),
      lastupdatedBy: (json['lastupdatedBy'] as num).toInt(),
      updatedCount: (json['updatedCount'] as num).toInt(),
    );

Map<String, dynamic> _$$CardImplToJson(_$CardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'speed': instance.speed,
      'bandWidth': instance.bandWidth,
      'code': instance.code,
      'status': instance.status,
      'createdOn': instance.createdOn.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastupdatedOn': instance.lastupdatedOn.toIso8601String(),
      'lastupdatedBy': instance.lastupdatedBy,
      'updatedCount': instance.updatedCount,
    };
