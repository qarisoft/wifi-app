// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentImpl _$$PaymentImplFromJson(Map<String, dynamic> json) =>
    _$PaymentImpl(
      id: (json['id'] as num).toInt(),
      inAmt: (json['in_amt'] as num).toDouble(),
      outAmt: (json['out_amt'] as num).toDouble(),
      hdrId: (json['hdr_id'] as num).toInt(),
      salPointId: (json['point_id'] as num).toInt(),
      extraInfo: json['extra_info'] as String,
      status: json['is_active'] as bool,
      payDate: DateTime.parse(json['pay_date'] as String),
      payDescription: json['pay_description'] as String,
      yearID: (json['year_id'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      createdBy: (json['created_by'] as num).toInt(),
      lastUpdatedAt: json['last_updated_at'] == null
          ? null
          : DateTime.parse(json['last_updated_at'] as String),
      lastUpdatedBy: (json['last_updated_by'] as num).toInt(),
      updatedCount: (json['update_counts'] as num).toInt(),
    );

Map<String, dynamic> _$$PaymentImplToJson(_$PaymentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'in_amt': instance.inAmt,
      'out_amt': instance.outAmt,
      'hdr_id': instance.hdrId,
      'point_id': instance.salPointId,
      'extra_info': instance.extraInfo,
      'is_active': instance.status,
      'pay_date': instance.payDate.toIso8601String(),
      'pay_description': instance.payDescription,
      'year_id': instance.yearID,
      'created_at': instance.createdAt.toIso8601String(),
      'created_by': instance.createdBy,
      'last_updated_at': instance.lastUpdatedAt?.toIso8601String(),
      'last_updated_by': instance.lastUpdatedBy,
      'update_counts': instance.updatedCount,
    };

_$PaymentDataImpl _$$PaymentDataImplFromJson(Map<String, dynamic> json) =>
    _$PaymentDataImpl(
      inAmt: (json['in_amt'] as num).toDouble(),
      hdrId: (json['hdr_id'] as num).toInt(),
      salPointId: (json['point_id'] as num).toInt(),
      extraInfo: json['extra_info'] as String,
      status: json['is_active'] as bool?,
      payDate: json['pay_date'] == null
          ? null
          : DateTime.parse(json['pay_date'] as String),
      payDescription: json['pay_description'] as String? ?? '',
    );

Map<String, dynamic> _$$PaymentDataImplToJson(_$PaymentDataImpl instance) =>
    <String, dynamic>{
      'in_amt': instance.inAmt,
      'hdr_id': instance.hdrId,
      'point_id': instance.salPointId,
      'extra_info': instance.extraInfo,
      'is_active': instance.status,
      'pay_date': instance.payDate?.toIso8601String(),
      'pay_description': instance.payDescription,
    };
