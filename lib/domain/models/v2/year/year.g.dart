// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'year.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$YearImpl _$$YearImplFromJson(Map<String, dynamic> json) => _$YearImpl(
      id: (json['id'] as num).toInt(),
      status: json['is_active'] as bool,
      isCurrent: json['is_current_year'] as bool,
      startDate: DateTime.parse(json['start_date'] as String),
      endDate: DateTime.parse(json['end_date'] as String),
      openedBy: (json['opened_by'] as num?)?.toInt(),
      openedAt: json['opened_at'] == null
          ? null
          : DateTime.parse(json['opened_at'] as String),
      openDescription: json['open_description'] as String,
    );

Map<String, dynamic> _$$YearImplToJson(_$YearImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_active': instance.status,
      'is_current_year': instance.isCurrent,
      'start_date': instance.startDate.toIso8601String(),
      'end_date': instance.endDate.toIso8601String(),
      'opened_by': instance.openedBy,
      'opened_at': instance.openedAt?.toIso8601String(),
      'open_description': instance.openDescription,
    };

_$YearDataImpl _$$YearDataImplFromJson(Map<String, dynamic> json) =>
    _$YearDataImpl(
      status: json['is_active'] as bool?,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      openedAt: json['opened_at'] == null
          ? null
          : DateTime.parse(json['opened_at'] as String),
      openDescription: json['open_description'] as String?,
    );

Map<String, dynamic> _$$YearDataImplToJson(_$YearDataImpl instance) =>
    <String, dynamic>{
      'is_active': instance.status,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'opened_at': instance.openedAt?.toIso8601String(),
      'open_description': instance.openDescription,
    };
