// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gen_card_hdr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenerateCardDetailsImpl _$$GenerateCardDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$GenerateCardDetailsImpl(
      id: (json['id'] as num).toInt(),
      hdrId: (json['hdrId'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      cardId: (json['cardId'] as num).toInt(),
      description: json['description'] as String,
      createdOn: DateTime.parse(json['createdOn'] as String),
      createdBy: (json['createdBy'] as num).toInt(),
      lastupdatedOn: DateTime.parse(json['lastupdatedOn'] as String),
      lastupdatedBy: (json['lastupdatedBy'] as num).toInt(),
      updatedCount: (json['updatedCount'] as num).toInt(),
    );

Map<String, dynamic> _$$GenerateCardDetailsImplToJson(
        _$GenerateCardDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hdrId': instance.hdrId,
      'quantity': instance.quantity,
      'cardId': instance.cardId,
      'description': instance.description,
      'createdOn': instance.createdOn.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastupdatedOn': instance.lastupdatedOn.toIso8601String(),
      'lastupdatedBy': instance.lastupdatedBy,
      'updatedCount': instance.updatedCount,
    };
