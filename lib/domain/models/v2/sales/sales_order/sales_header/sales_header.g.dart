// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalesOrderHeaderImpl _$$SalesOrderHeaderImplFromJson(
        Map<String, dynamic> json) =>
    _$SalesOrderHeaderImpl(
      id: (json['id'] as num).toInt(),
      status: json['is_active'] as bool,
      isAproved: json['is_aproved'] as bool,
      salePointId: (json['point_id'] as num).toInt(),
      statement: json['statement'] as String? ?? 'create order',
      yearID: (json['year_id'] as num).toInt(),
      isRejected: json['is_rejected'] as bool,
      isValid: json['is_valid'] as bool,
      isOutDated: json['is_out_dated'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      createdBy: (json['created_by'] as num).toInt(),
      lastUpdatedAt: json['last_updated_at'] == null
          ? null
          : DateTime.parse(json['last_updated_at'] as String),
      lastUpdatedBy: (json['last_updated_by'] as num).toInt(),
      updatedCount: (json['update_counts'] as num).toInt(),
    );

Map<String, dynamic> _$$SalesOrderHeaderImplToJson(
        _$SalesOrderHeaderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_active': instance.status,
      'is_aproved': instance.isAproved,
      'point_id': instance.salePointId,
      'statement': instance.statement,
      'year_id': instance.yearID,
      'is_rejected': instance.isRejected,
      'is_valid': instance.isValid,
      'is_out_dated': instance.isOutDated,
      'created_at': instance.createdAt.toIso8601String(),
      'created_by': instance.createdBy,
      'last_updated_at': instance.lastUpdatedAt?.toIso8601String(),
      'last_updated_by': instance.lastUpdatedBy,
      'update_counts': instance.updatedCount,
    };

_$SlsOrdHdrDataImpl _$$SlsOrdHdrDataImplFromJson(Map<String, dynamic> json) =>
    _$SlsOrdHdrDataImpl(
      salePointId: (json['point_id'] as num).toInt(),
      statement: json['statement'] as String? ?? 'null',
      status: json['is_active'] as bool?,
      isRejected: json['is_rejected'] as bool?,
      isValid: json['is_valid'] as bool?,
      isOutDated: json['is_out_dated'] as bool?,
    );

Map<String, dynamic> _$$SlsOrdHdrDataImplToJson(_$SlsOrdHdrDataImpl instance) =>
    <String, dynamic>{
      'point_id': instance.salePointId,
      'statement': instance.statement,
      'is_active': instance.status,
      'is_rejected': instance.isRejected,
      'is_valid': instance.isValid,
      'is_out_dated': instance.isOutDated,
    };
