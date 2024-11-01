// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point_of_sales.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PointOfSaleImpl _$$PointOfSaleImplFromJson(Map<String, dynamic> json) =>
    _$PointOfSaleImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      phone: json['phone'] as String,
      location: json['location'] as String,
      description: json['description'] as String,
      periorty: (json['periorty'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      createdOn: DateTime.parse(json['createdOn'] as String),
      createdBy: (json['createdBy'] as num).toInt(),
      lastupdatedOn: DateTime.parse(json['lastupdatedOn'] as String),
      lastupdatedBy: (json['lastupdatedBy'] as num).toInt(),
      updatedCount: (json['updatedCount'] as num).toInt(),
    );

Map<String, dynamic> _$$PointOfSaleImplToJson(_$PointOfSaleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'location': instance.location,
      'description': instance.description,
      'periorty': instance.periorty,
      'status': instance.status,
      'createdOn': instance.createdOn.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastupdatedOn': instance.lastupdatedOn.toIso8601String(),
      'lastupdatedBy': instance.lastupdatedBy,
      'updatedCount': instance.updatedCount,
    };
