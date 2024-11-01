// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalePointPaymentImpl _$$SalePointPaymentImplFromJson(
        Map<String, dynamic> json) =>
    _$SalePointPaymentImpl(
      id: (json['id'] as num).toInt(),
      salPointId: (json['salPointId'] as num).toInt(),
      orderId: (json['orderId'] as num).toInt(),
      inAmt: (json['inAmt'] as num).toInt(),
      outAmt: (json['outAmt'] as num).toInt(),
      payDate: DateTime.parse(json['payDate'] as String),
      payDescription: (json['payDescription'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      yearId: (json['yearId'] as num).toInt(),
      extraInfo: json['extraInfo'] as String,
    );

Map<String, dynamic> _$$SalePointPaymentImplToJson(
        _$SalePointPaymentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'salPointId': instance.salPointId,
      'orderId': instance.orderId,
      'inAmt': instance.inAmt,
      'outAmt': instance.outAmt,
      'payDate': instance.payDate.toIso8601String(),
      'payDescription': instance.payDescription,
      'status': instance.status,
      'yearId': instance.yearId,
      'extraInfo': instance.extraInfo,
    };
