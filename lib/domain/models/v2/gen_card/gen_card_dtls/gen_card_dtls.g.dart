// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gen_card_dtls.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenerateCardHeaderImpl _$$GenerateCardHeaderImplFromJson(
        Map<String, dynamic> json) =>
    _$GenerateCardHeaderImpl(
      id: (json['id'] as num).toInt(),
      isAproved: (json['isAproved'] as num).toInt(),
      yearId: (json['yearId'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      generateDate: DateTime.parse(json['generateDate'] as String),
      description: json['description'] as String,
      createdOn: DateTime.parse(json['createdOn'] as String),
      createdBy: (json['createdBy'] as num).toInt(),
      lastupdatedOn: DateTime.parse(json['lastupdatedOn'] as String),
      lastupdatedBy: (json['lastupdatedBy'] as num).toInt(),
      updatedCount: (json['updatedCount'] as num).toInt(),
    );

Map<String, dynamic> _$$GenerateCardHeaderImplToJson(
        _$GenerateCardHeaderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isAproved': instance.isAproved,
      'yearId': instance.yearId,
      'status': instance.status,
      'generateDate': instance.generateDate.toIso8601String(),
      'description': instance.description,
      'createdOn': instance.createdOn.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastupdatedOn': instance.lastupdatedOn.toIso8601String(),
      'lastupdatedBy': instance.lastupdatedBy,
      'updatedCount': instance.updatedCount,
    };
