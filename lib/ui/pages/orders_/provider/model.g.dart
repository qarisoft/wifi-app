// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderHdrWithDtlsImpl _$$OrderHdrWithDtlsImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderHdrWithDtlsImpl(
      header: SalesOrderHeader.fromJson(json['header'] as Map<String, dynamic>),
      details: (json['details'] as List<dynamic>)
          .map((e) => SalesOrderDtl.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderHdrWithDtlsImplToJson(
        _$OrderHdrWithDtlsImpl instance) =>
    <String, dynamic>{
      'header': instance.header.toJson(),
      'details': instance.details.map((e) => e.toJson()).toList(),
    };
