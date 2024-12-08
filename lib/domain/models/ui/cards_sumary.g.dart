// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cards_sumary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardsSummeryImpl _$$CardsSummeryImplFromJson(Map<String, dynamic> json) =>
    _$CardsSummeryImpl(
      id: (json['id'] as num).toInt(),
      item: json['item'] as String? ?? '',
      available: (json['available'] as num?)?.toInt() ?? 0,
      broken: (json['broken'] as num?)?.toInt() ?? 0,
      validReturned: (json['validReturned'] as num?)?.toInt() ?? 0,
      outDated: (json['outDated'] as num?)?.toInt() ?? 0,
      generated: (json['generated'] as num?)?.toInt() ?? 0,
      store: (json['store'] as num?)?.toInt() ?? 0,
      soled: (json['soled'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CardsSummeryImplToJson(_$CardsSummeryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'item': instance.item,
      'available': instance.available,
      'broken': instance.broken,
      'validReturned': instance.validReturned,
      'outDated': instance.outDated,
      'generated': instance.generated,
      'store': instance.store,
      'soled': instance.soled,
    };
