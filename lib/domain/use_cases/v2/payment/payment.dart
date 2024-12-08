// import 'package:app/core/error/failure.dart';
// import 'package:app/data/use_cases/cards/gen_cards.dart';
import 'package:app/domain/models/v2/sales/sales_payment/sales_payment.dart';

import '../../use_case.dart';

abstract class PaymentUseCase
    implements CreateDeleteUpdate<Payment, PaymentData> {
  // FAOr<DbFailure, bool> approve(int id);
}
