import 'package:app/data/use_cases/payment.dart';
import 'package:app/domain/models/v2/sales/sales_payment/sales_payment.dart';
import 'package:app/domain/use_cases/v2/sales/sales.dart';

import 'types.dart';

class PaymentsTester extends Tester {
  PaymentsTester(super.service) : useCase = PaymentUseCaseI(service: service);

  final PaymentsUseCase useCase;

  Tst all() async {
    final res = await useCase.getAll();
    // print('payments :-> ${res.resMsg()} \n//\n');
    // return
    return res.call((a) => true);
  }

  Tst create() async {
    const p = PaymentData(inAmt: 100, hdrId: 1, salPointId: 1, extraInfo: '');
    final a = await useCase.create(p);
    // print('payments :-> ${a.resMsg()} \n//\n');
    return await all();
  }
}
