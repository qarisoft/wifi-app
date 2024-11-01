// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalesOrderHeaderImpl _$$SalesOrderHeaderImplFromJson(
        Map<String, dynamic> json) =>
    _$SalesOrderHeaderImpl(
      id: (json['id'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      yearID: (json['yearID'] as num).toInt(),
      orderType: (json['orderType'] as num).toInt(),
      description: json['description'] as String,
      createdOn: DateTime.parse(json['createdOn'] as String),
      orderDate: DateTime.parse(json['orderDate'] as String),
    );

Map<String, dynamic> _$$SalesOrderHeaderImplToJson(
        _$SalesOrderHeaderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'yearID': instance.yearID,
      'orderType': instance.orderType,
      'description': instance.description,
      'createdOn': instance.createdOn.toIso8601String(),
      'orderDate': instance.orderDate.toIso8601String(),
    };
