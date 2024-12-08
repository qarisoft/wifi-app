// import 'package:app/core/utils/extensions.dart';
import 'package:app/data/service/db/sqlite.dart';

import 'testers/cards.dart';
import 'testers/gen_cards.dart';
import 'testers/op_cards.dart';
import 'testers/payments.dart';
import 'testers/sales.dart';
import 'testers/user.dart';
import 'testers/year.dart';

class MainTester {
  final SqlService service;

  final CardsTester cardsTester;
  final YearTester yearTester;
  final USerTester userTester;
  final GenCardsTester gcTester;
  final OpCardsTester opCTester;
  final SalesTester salesTester;
  final PaymentsTester payTester;

  MainTester(this.service)
      : cardsTester = CardsTester(service),
        yearTester = YearTester(service),
        gcTester = GenCardsTester(service),
        userTester = USerTester(service),
        opCTester = OpCardsTester(service),
        salesTester = SalesTester(service),
        payTester = PaymentsTester(service);

  test() async {
    return await service.sql((db) async {
      return await db.rawQuery('''
      select * from years 
      
      ''');
    });
  }

  close() async {
    await service.close();
  }

// Tst
}
