// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalesOrderDtlImpl _$$SalesOrderDtlImplFromJson(Map<String, dynamic> json) =>
    _$SalesOrderDtlImpl(
      description: json['description'] as String,
      status: json['is_active'] as bool,
      id: (json['rec_ser'] as num).toInt(),
      hdrId: (json['hdr_id'] as num).toInt(),
      cardId: (json['card_id'] as num).toInt(),
      cardPrice: (json['card_price'] as num).toDouble(),
      inQty: (json['in_qty'] as num).toInt(),
      outQty: (json['out_qty'] as num).toInt(),
      yearID: (json['year_id'] as num).toInt(),
      isApproved: json['is_aproved'] as bool,
      isFree: json['is_free'] as bool,
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

Map<String, dynamic> _$$SalesOrderDtlImplToJson(_$SalesOrderDtlImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'is_active': instance.status,
      'rec_ser': instance.id,
      'hdr_id': instance.hdrId,
      'card_id': instance.cardId,
      'card_price': instance.cardPrice,
      'in_qty': instance.inQty,
      'out_qty': instance.outQty,
      'year_id': instance.yearID,
      'is_aproved': instance.isApproved,
      'is_free': instance.isFree,
      'is_rejected': instance.isRejected,
      'is_valid': instance.isValid,
      'is_out_dated': instance.isOutDated,
      'created_at': instance.createdAt.toIso8601String(),
      'created_by': instance.createdBy,
      'last_updated_at': instance.lastUpdatedAt?.toIso8601String(),
      'last_updated_by': instance.lastUpdatedBy,
      'update_counts': instance.updatedCount,
    };

_$SlsOrdDtlDataImpl _$$SlsOrdDtlDataImplFromJson(Map<String, dynamic> json) =>
    _$SlsOrdDtlDataImpl(
      description: json['description'] as String?,
      status: json['is_active'] as bool? ?? true,
      hdrId: (json['hdr_id'] as num).toInt(),
      cardId: (json['card_id'] as num).toInt(),
      inQty: (json['in_qty'] as num?)?.toInt(),
      outQty: (json['out_qty'] as num).toInt(),
      yearID: (json['year_id'] as num?)?.toInt(),
      isFree: json['is_free'] as bool?,
      isRejected: json['is_rejected'] as bool?,
      isValid: json['is_valid'] as bool?,
      isOutDated: json['is_out_dated'] as bool?,
    );

Map<String, dynamic> _$$SlsOrdDtlDataImplToJson(_$SlsOrdDtlDataImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'is_active': instance.status,
      'hdr_id': instance.hdrId,
      'card_id': instance.cardId,
      'in_qty': instance.inQty,
      'out_qty': instance.outQty,
      'year_id': instance.yearID,
      'is_free': instance.isFree,
      'is_rejected': instance.isRejected,
      'is_valid': instance.isValid,
      'is_out_dated': instance.isOutDated,
    };

_$SlsOrdDtlDataInImpl _$$SlsOrdDtlDataInImplFromJson(
        Map<String, dynamic> json) =>
    _$SlsOrdDtlDataInImpl(
      status: json['is_active'] as bool?,
      description: json['description'] as String?,
      hdrId: (json['hdr_id'] as num).toInt(),
      cardId: (json['card_id'] as num).toInt(),
      outQty: (json['out_qty'] as num).toInt(),
      yearID: (json['year_id'] as num?)?.toInt(),
      isFree: json['is_free'] as bool?,
      isRejected: json['is_rejected'] as bool,
      isValid: json['is_valid'] as bool,
      isOutDated: json['is_out_dated'] as bool?,
    );

Map<String, dynamic> _$$SlsOrdDtlDataInImplToJson(
        _$SlsOrdDtlDataInImpl instance) =>
    <String, dynamic>{
      'is_active': instance.status,
      'description': instance.description,
      'hdr_id': instance.hdrId,
      'card_id': instance.cardId,
      'out_qty': instance.outQty,
      'year_id': instance.yearID,
      'is_free': instance.isFree,
      'is_rejected': instance.isRejected,
      'is_valid': instance.isValid,
      'is_out_dated': instance.isOutDated,
    };
