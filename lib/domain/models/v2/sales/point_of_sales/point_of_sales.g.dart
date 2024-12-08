// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point_of_sales.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PointOfSaleImpl _$$PointOfSaleImplFromJson(Map<String, dynamic> json) =>
    _$PointOfSaleImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      phone: json['phone'] as String? ?? '',
      location: json['location'] as String?,
      description: json['description'] as String?,
      periorty: (json['periorty'] as num?)?.toInt(),
      status: json['is_active'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      createdBy: (json['created_by'] as num?)?.toInt() ?? 0,
      lastUpdatedAt: json['last_updated_at'] == null
          ? null
          : DateTime.parse(json['last_updated_at'] as String),
      lastUpdatedBy: (json['last_updated_by'] as num?)?.toInt(),
      updatedCount: (json['update_counts'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PointOfSaleImplToJson(_$PointOfSaleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'location': instance.location,
      'description': instance.description,
      'periorty': instance.periorty,
      'is_active': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
      'created_by': instance.createdBy,
      'last_updated_at': instance.lastUpdatedAt?.toIso8601String(),
      'last_updated_by': instance.lastUpdatedBy,
      'update_counts': instance.updatedCount,
    };

_$PointOfSlsDataImpl _$$PointOfSlsDataImplFromJson(Map<String, dynamic> json) =>
    _$PointOfSlsDataImpl(
      name: json['name'] as String,
      phone: json['phone'] as String,
      location: json['location'] as String?,
      description: json['description'] as String?,
      periorty: (json['periorty'] as num?)?.toInt(),
      status: json['is_active'] as bool? ?? true,
    );

Map<String, dynamic> _$$PointOfSlsDataImplToJson(
        _$PointOfSlsDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'location': instance.location,
      'description': instance.description,
      'periorty': instance.periorty,
      'is_active': instance.status,
    };
