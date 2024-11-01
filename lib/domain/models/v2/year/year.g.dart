// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'year.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$YearImpl _$$YearImplFromJson(Map<String, dynamic> json) => _$YearImpl(
      id: (json['id'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      isCurrent: json['isCurrent'] as bool,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      openedBy: (json['openedBy'] as num).toInt(),
      openedOn: DateTime.parse(json['openedOn'] as String),
      openDescription: json['openDescription'] as String,
    );

Map<String, dynamic> _$$YearImplToJson(_$YearImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'isCurrent': instance.isCurrent,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'openedBy': instance.openedBy,
      'openedOn': instance.openedOn.toIso8601String(),
      'openDescription': instance.openDescription,
    };
