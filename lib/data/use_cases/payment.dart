import 'package:app/domain/models/v2/sales/sales_payment/sales_payment.dart';
import 'package:app/domain/use_cases/v2/sales/sales.dart';

import './create_edit_delete.dart';

class PaymentUseCaseI extends CreateDeleteUpdateFactory<Payment, PaymentData>
    implements PaymentsUseCase {
  PaymentUseCaseI(
      {required super.service,
      super.table = 'payments',
      super.toModelFunc = Payment.fromJson});
}
