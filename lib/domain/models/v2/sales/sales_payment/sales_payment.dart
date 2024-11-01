import 'package:freezed_annotation/freezed_annotation.dart';
part 'sales_payment.freezed.dart';
part 'sales_payment.g.dart';

@freezed
class SalePointPayment with _$SalePointPayment {
  const factory SalePointPayment({
    required int id,
    required int salPointId,
    required int orderId,

    //
    required int inAmt,
    required int outAmt,

    //
    required DateTime payDate,
    required int payDescription,
    required int status,

    //
    required int yearId,

    //
    required String extraInfo,
  }) = _SalePointPayment;

  factory SalePointPayment.fromJson(Map<String, dynamic> json) =>
      _$SalePointPaymentFromJson(json);
}
