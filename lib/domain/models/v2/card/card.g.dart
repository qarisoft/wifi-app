// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardImpl _$$CardImplFromJson(Map<String, dynamic> json) => _$CardImpl(
      speed: (json['speed'] as num?)?.toInt() ?? 0,
      id: (json['id'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      status: json['is_active'] as bool,
      name: json['name'] as String? ?? '',
      code: json['code'] as String? ?? '',
      bandWidth: (json['band_width'] as num?)?.toInt(),
      isFree: json['is_free'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      createdBy: (json['created_by'] as num).toInt(),
      lastupdatedAt: json['last_updated_at'] == null
          ? null
          : DateTime.parse(json['last_updated_at'] as String),
      lastupdatedBy: (json['last_updated_by'] as num).toInt(),
      updatedCount: (json['update_counts'] as num).toInt(),
    );

Map<String, dynamic> _$$CardImplToJson(_$CardImpl instance) =>
    <String, dynamic>{
      'speed': instance.speed,
      'id': instance.id,
      'price': instance.price,
      'is_active': instance.status,
      'name': instance.name,
      'code': instance.code,
      'band_width': instance.bandWidth,
      'is_free': instance.isFree,
      'created_at': instance.createdAt.toIso8601String(),
      'created_by': instance.createdBy,
      'last_updated_at': instance.lastupdatedAt?.toIso8601String(),
      'last_updated_by': instance.lastupdatedBy,
      'update_counts': instance.updatedCount,
    };

_$CardDataImpl _$$CardDataImplFromJson(Map<String, dynamic> json) =>
    _$CardDataImpl(
      price: (json['price'] as num).toDouble(),
      speed: (json['speed'] as num?)?.toInt() ?? 0,
      name: json['name'] as String,
      code: json['code'] as String,
      status: json['is_active'] as bool?,
      bandWidth: (json['band_width'] as num?)?.toInt(),
      isFree: json['is_free'] as bool?,
    );

Map<String, dynamic> _$$CardDataImplToJson(_$CardDataImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'speed': instance.speed,
      'name': instance.name,
      'code': instance.code,
      'is_active': instance.status,
      'band_width': instance.bandWidth,
      'is_free': instance.isFree,
    };
