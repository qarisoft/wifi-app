// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gen_card_hdr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenerateCardHeaderImpl _$$GenerateCardHeaderImplFromJson(
        Map<String, dynamic> json) =>
    _$GenerateCardHeaderImpl(
      description: json['description'] as String? ?? '',
      id: (json['id'] as num).toInt(),
      status: json['is_active'] as bool,
      yearId: (json['year_id'] as num).toInt(),
      isAproved: json['is_aproved'] as bool,
      generatedDate: DateTime.parse(json['generated_date'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      createdBy: (json['created_by'] as num).toInt(),
      lastUpdatedAt: json['last_updated_at'] == null
          ? null
          : DateTime.parse(json['last_updated_at'] as String),
      lastUpdatedBy: (json['last_updated_by'] as num).toInt(),
      updatedCount: (json['update_counts'] as num).toInt(),
    );

Map<String, dynamic> _$$GenerateCardHeaderImplToJson(
        _$GenerateCardHeaderImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
      'is_active': instance.status,
      'year_id': instance.yearId,
      'is_aproved': instance.isAproved,
      'generated_date': instance.generatedDate.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'created_by': instance.createdBy,
      'last_updated_at': instance.lastUpdatedAt?.toIso8601String(),
      'last_updated_by': instance.lastUpdatedBy,
      'update_counts': instance.updatedCount,
    };

_$GnCardHdrResImpl _$$GnCardHdrResImplFromJson(Map<String, dynamic> json) =>
    _$GnCardHdrResImpl(
      description: json['description'] as String? ?? '',
      id: (json['id'] as num?)?.toInt(),
      status: json['is_active'] as bool,
      yearId: (json['year_id'] as num?)?.toInt(),
      isAproved: json['is_aproved'] as bool?,
      generatedDate: json['generated_date'] == null
          ? null
          : DateTime.parse(json['generated_date'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdBy: (json['created_by'] as num?)?.toInt(),
      lastUpdatedAt: json['last_updated_at'] == null
          ? null
          : DateTime.parse(json['last_updated_at'] as String),
      lastUpdatedBy: (json['last_updated_by'] as num?)?.toInt(),
      updatedCount: (json['update_counts'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GnCardHdrResImplToJson(_$GnCardHdrResImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
      'is_active': instance.status,
      'year_id': instance.yearId,
      'is_aproved': instance.isAproved,
      'generated_date': instance.generatedDate?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by': instance.createdBy,
      'last_updated_at': instance.lastUpdatedAt?.toIso8601String(),
      'last_updated_by': instance.lastUpdatedBy,
      'update_counts': instance.updatedCount,
    };

_$GnCardHdrDataImpl _$$GnCardHdrDataImplFromJson(Map<String, dynamic> json) =>
    _$GnCardHdrDataImpl(
      description: json['description'] as String? ?? '',
      status: json['is_active'] as bool? ?? true,
      generatedDate: json['generated_date'] == null
          ? null
          : DateTime.parse(json['generated_date'] as String),
    );

Map<String, dynamic> _$$GnCardHdrDataImplToJson(_$GnCardHdrDataImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'is_active': instance.status,
      'generated_date': instance.generatedDate?.toIso8601String(),
    };
