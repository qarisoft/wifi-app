// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operational_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OperationalCardImpl _$$OperationalCardImplFromJson(
        Map<String, dynamic> json) =>
    _$OperationalCardImpl(
      id: (json['id'] as num).toInt(),
      yearId: (json['yearId'] as num).toInt(),
      cardId: (json['cardId'] as num).toInt(),
      cardprice: (json['cardprice'] as num).toInt(),
      isFree: (json['isFree'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      inQty: (json['inQty'] as num).toInt(),
      outQty: (json['outQty'] as num).toInt(),
      typeHdrId: (json['typeHdrId'] as num).toInt(),
      typeDtlId: (json['typeDtlId'] as num).toInt(),
      createdOn: DateTime.parse(json['createdOn'] as String),
    );

Map<String, dynamic> _$$OperationalCardImplToJson(
        _$OperationalCardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'yearId': instance.yearId,
      'cardId': instance.cardId,
      'cardprice': instance.cardprice,
      'isFree': instance.isFree,
      'status': instance.status,
      'inQty': instance.inQty,
      'outQty': instance.outQty,
      'typeHdrId': instance.typeHdrId,
      'typeDtlId': instance.typeDtlId,
      'createdOn': instance.createdOn.toIso8601String(),
    };
