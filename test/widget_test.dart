// import 'package:app/core/utils/extensions.dart';
// import 'package:app/data/responses/user/user.dart';
import 'package:app/data/service/db/sqlite.dart';
// import 'package:app/domain/use_cases/v2/years/year.dart';
// import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'sqflite.dart';

void sqfliteTestInit() {
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;
}

Future<void> exT(Future<bool> Function() action, [bool e = true]) async {
  final a = await action();
  expect(a, e);
}

Future main() async {
  late MainTester tester;
  // String p = 'd${Random().nextInt(100)}.db';
  setUpAll(() async {
    sqfliteTestInit();
    String pp = 'd.db';
    // await deleteDatabase(pp);
    // await App.init(path: pp);
    tester = MainTester(SqlTester(pp));
  });

  test('register', () => exT(tester.userTester.register));
  test('login', () => exT(tester.userTester.login));
  test('login fail', () => exT(tester.userTester.loginFail, false));
  test('current year non', () => exT(tester.yearTester.getCurrentYear, false));
  test('years empty', () => exT(tester.yearTester.getYears));
  test('create 5 years', () => exT(tester.yearTester.createYears));
  test(
    'open 5 years then get current year should be single',
    () => exT(tester.yearTester.openYears),
  );
  //
  test('create products', () => exT(tester.cardsTester.createCards));
  //
  test('generateBy', () => exT(tester.gcTester.generateBy));
  test('cards', () => exT(tester.gcTester.cards));
  test('createDtls', () => exT(tester.gcTester.createDtls));

  test('approve', () => exT(tester.gcTester.approve));
  test('operational cards all', () => exT(tester.opCTester.all));
  test('points of sales all', () => exT(tester.salesTester.pointsOfSales));
  test('create slsOrdHdr ', () => exT(tester.salesTester.createSalesOrderHdr));
  test(
      'create slsOrdDtls ', () => exT(tester.salesTester.createSalesOrderDtls));
  test('approve ', () => exT(tester.salesTester.approve));
  test('operational cards all', () => exT(tester.opCTester.all));
  test('payment create', () => exT(tester.payTester.create));

  //
}

// T to<T>(T e) => e;

// T? toElement<T>(T? data) {
//   if (data != null) {
//     return data;
//   }
//   return null;
// }

// extension ValueExtracter<T, E> on Either<T, E> {
//   res() => fold((l) => l, (r) => r);
//   E? r() => fold((l) => null, (r) => r);
// }

// extension Logger<T> on T {
//   T log(String? msg) {
//     print('$msg : ${toString()}');
//     return this;
//   }
// }

//   test('', () async {
//     final a = await tester.service.sql((db) async {
//       final sqls = '''
// INSERT INTO users(username,login_pwd,is_active)
// 		VALUES ('salah','pass',1),
// 		('salah2','pass',1);
// --
// INSERT INTO logins(user_id)
// 		VALUES (2);
// --
// INSERT INTO years(is_current_year,is_active)
// 	VALUES
// 	(1,1),
// 	(1,1);
// --
// INSERT INTO cards(name,price,is_active)
// 	VALUES
// 		('c1',200,1),
// 		('c2',300,1),
// 		('c3',400,1),
// 		('c4',500,1);
// --
// INSERT INTO generated_card_hdrs(description,is_active) VALUES ("dsadsadsadsa",1);
// --
// INSERT INTO generated_card_dtls(hdr_id,card_id,quantity,is_active) VALUES
// 	(1,1,70,1),
// 	(1,2,40,1),
// 	(1,3,50,1),
// 	(1,4,60,1);
// --
// UPDATE generated_card_dtls
// 	SET description="updated"
// 	WHERE rec_ser=3;
// --
// INSERT INTO generated_card_hdrs_approves(hdr_id) VALUES (1);
// --
// INSERT INTO point_of_sales (name,is_active)
// 	VALUES  ('dsad',1),
// 			('dsadeg',1),
// 			('dsadsadd',1);
// --
// INSERT INTO sales_order_hdrs(point_id,is_active)
// 	VALUES (1,1);
// --
// INSERT INTO sales_order_dtls (hdr_id,card_id,out_qty,is_active)
// 	VALUES
// 		(1,1,10,1),
// 		(1,2,10,1),
// 		(1,3,10,1),
// 		(1,4,10,1);
// --
// INSERT INTO sales_order_hdrs_approves(hdr_id) VALUES(1);
// --
// INSERT INTO sales_order_hdrs(statement,is_active)
// 	VALUES
// 		('reject some cards',1);
// --
// INSERT INTO sales_order_dtls (hdr_id,card_id,in_qty,is_active,is_valid,is_rejected,description)
// 	VALUES
// 		(2,1,5,1,0,1,'rejected'),
// 		(2,4,5,1,0,1,'rejected');
// '''
//           .split('--');
//       for (var sql in sqls) {
//         await db.rawQuery(sql);
//       }
//       return await db.query('operational_cards');
//     });
//     print(a);
//     // final res= await tester.service.sql((db)async =>await db.rawQuery('select * from operational_cards;'));
//     // print(res);
//     //   String pp = 'data1.db';
//     //   await deleteDatabase(pp);
//   });
