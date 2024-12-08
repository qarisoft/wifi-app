// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gen_card_dtls.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenerateCardDetailsImpl _$$GenerateCardDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$GenerateCardDetailsImpl(
      id: (json['rec_ser'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      hdrId: (json['hdr_id'] as num).toInt(),
      cardId: (json['card_id'] as num).toInt(),
      status: json['is_active'] as bool,
      description: json['description'] as String,
      isApproved: json['is_aproved'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      createdBy: (json['created_by'] as num).toInt(),
      lastUpdatedAt: json['last_updated_at'] == null
          ? null
          : DateTime.parse(json['last_updated_at'] as String),
      lastUpdatedBy: (json['last_updated_by'] as num).toInt(),
      updatedCount: (json['update_counts'] as num).toInt(),
    );

Map<String, dynamic> _$$GenerateCardDetailsImplToJson(
        _$GenerateCardDetailsImpl instance) =>
    <String, dynamic>{
      'rec_ser': instance.id,
      'quantity': instance.quantity,
      'hdr_id': instance.hdrId,
      'card_id': instance.cardId,
      'is_active': instance.status,
      'description': instance.description,
      'is_aproved': instance.isApproved,
      'created_at': instance.createdAt.toIso8601String(),
      'created_by': instance.createdBy,
      'last_updated_at': instance.lastUpdatedAt?.toIso8601String(),
      'last_updated_by': instance.lastUpdatedBy,
      'update_counts': instance.updatedCount,
    };

_$GnCardDtlDataImpl _$$GnCardDtlDataImplFromJson(Map<String, dynamic> json) =>
    _$GnCardDtlDataImpl(
      quantity: (json['quantity'] as num?)?.toInt(),
      hdrId: (json['hdr_id'] as num?)?.toInt(),
      cardId: (json['card_id'] as num).toInt(),
      status: json['is_active'] as bool? ?? true,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$GnCardDtlDataImplToJson(_$GnCardDtlDataImpl instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'hdr_id': instance.hdrId,
      'card_id': instance.cardId,
      'is_active': instance.status,
      'description': instance.description,
    };
