// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operational_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OperationalCardImpl _$$OperationalCardImplFromJson(
        Map<String, dynamic> json) =>
    _$OperationalCardImpl(
      id: (json['rec_ser'] as num).toInt(),
      cardId: (json['card_id'] as num).toInt(),
      yearId: (json['year_id'] as num).toInt(),
      inQty: (json['in_qty'] as num).toInt(),
      outQty: (json['out_qty'] as num).toInt(),
      cardPrice: (json['card_price'] as num).toDouble(),
      isFree: json['is_free'] as bool,
      isGenerated: json['is_generated'] as bool,
      isValid: json['is_valid'] as bool,
      isRejected: json['is_rejected'] as bool,
      isOutDated: json['is_out_dated'] as bool,
      sourceId: (json['source_id'] as num).toInt(),
      sourceTable: json['source_table'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      createdBy: (json['created_by'] as num).toInt(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$OperationalCardImplToJson(
        _$OperationalCardImpl instance) =>
    <String, dynamic>{
      'rec_ser': instance.id,
      'card_id': instance.cardId,
      'year_id': instance.yearId,
      'in_qty': instance.inQty,
      'out_qty': instance.outQty,
      'card_price': instance.cardPrice,
      'is_free': instance.isFree,
      'is_generated': instance.isGenerated,
      'is_valid': instance.isValid,
      'is_rejected': instance.isRejected,
      'is_out_dated': instance.isOutDated,
      'source_id': instance.sourceId,
      'source_table': instance.sourceTable,
      'created_at': instance.createdAt.toIso8601String(),
      'created_by': instance.createdBy,
      'description': instance.description,
    };
