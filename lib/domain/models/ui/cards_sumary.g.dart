// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cards_sumary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardsSummeryImpl _$$CardsSummeryImplFromJson(Map<String, dynamic> json) =>
    _$CardsSummeryImpl(
      item: json['item'] as String,
      avilable: (json['avilable'] as num).toInt(),
      soled: (json['soled'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$$CardsSummeryImplToJson(_$CardsSummeryImpl instance) =>
    <String, dynamic>{
      'item': instance.item,
      'avilable': instance.avilable,
      'soled': instance.soled,
      'total': instance.total,
    };
