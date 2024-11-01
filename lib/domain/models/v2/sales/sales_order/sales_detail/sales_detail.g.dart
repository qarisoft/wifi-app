// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalesOrderDtlImpl _$$SalesOrderDtlImplFromJson(Map<String, dynamic> json) =>
    _$SalesOrderDtlImpl(
      id: (json['id'] as num).toInt(),
      orderId: (json['orderId'] as num).toInt(),
      cardId: (json['cardId'] as num).toInt(),
      inQty: (json['inQty'] as num).toInt(),
      outQty: (json['outQty'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      cardPrice: (json['cardPrice'] as num).toDouble(),
      isFree: json['isFree'] as bool,
      isRejected: json['isRejected'] as bool,
      isOutDated: json['isOutDated'] as bool,
      createdOn: DateTime.parse(json['createdOn'] as String),
      createdBy: (json['createdBy'] as num).toInt(),
      lastupdatedOn: DateTime.parse(json['lastupdatedOn'] as String),
      lastupdatedBy: (json['lastupdatedBy'] as num).toInt(),
      updatedCount: (json['updatedCount'] as num).toInt(),
    );

Map<String, dynamic> _$$SalesOrderDtlImplToJson(_$SalesOrderDtlImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderId': instance.orderId,
      'cardId': instance.cardId,
      'inQty': instance.inQty,
      'outQty': instance.outQty,
      'status': instance.status,
      'cardPrice': instance.cardPrice,
      'isFree': instance.isFree,
      'isRejected': instance.isRejected,
      'isOutDated': instance.isOutDated,
      'createdOn': instance.createdOn.toIso8601String(),
      'createdBy': instance.createdBy,
      'lastupdatedOn': instance.lastupdatedOn.toIso8601String(),
      'lastupdatedBy': instance.lastupdatedBy,
      'updatedCount': instance.updatedCount,
    };
