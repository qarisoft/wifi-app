import 'dart:math';

import 'package:app/data/use_cases/sales/sales.dart';
import 'package:app/domain/models/v2/sales/point_of_sales/point_of_sales.dart';
import 'package:app/domain/models/v2/sales/sales_order/sales_detail/sales_detail.dart';
import 'package:app/domain/models/v2/sales/sales_order/sales_header/sales_header.dart';
import 'package:app/domain/use_cases/v2/sales/sales.dart';

import 'types.dart';

class SalesTester extends Tester {
  SalesTester(super.service)
      : slsDtlUseCase = SlsOrderDtlUseCaseI(service: service),
        slsHdrUseCase = SlsOrderHdrUseCaseI(service: service),
        pointOfSUseCase = PointOfSalesUseCaseI(service: service);

  final SlsOrderDtlUseCase slsDtlUseCase;
  final SlsOrderHdrUseCase slsHdrUseCase;
  final PointOfSalesUseCase pointOfSUseCase;

  PointOfSlsData get point {
    final r = Random().nextInt(100);
    return PointOfSlsData(name: 'p$r', phone: '321312312321');
  }

  Tst pointsOfSales() async {
    //
    await pointOfSUseCase.create(point);
    await pointOfSUseCase.create(point);
    await pointOfSUseCase.create(point);
    //
    await pointOfSUseCase.create(point);
    await pointOfSUseCase.create(point);
    await pointOfSUseCase.create(point);
    //
    await pointOfSUseCase.create(point);
    await pointOfSUseCase.create(point);
    await pointOfSUseCase.create(point);
    final res = await pointOfSUseCase.getAll();

    // print('pointOfSales :-> ${res.resMsg()} \n//\n');
    //
    return res.call((a) => a.length == 9);
  }

  Tst createSalesOrderHdr() async {
    final a = await slsHdrUseCase.create(const SlsOrdHdrData(salePointId: 1));
    return a.fold((l) {
      print('fail ${l.msg}');
      return false;
    }, (r) {
      // print('SlsOrdHdrData created');
      return true;
    });
  }

  SlsOrdDtlData sDtl(cardId) {
    final r = Random().nextInt(4);
    return SlsOrdDtlData(hdrId: 1, cardId: cardId, outQty: r, status: true);
  }

  //
  Tst createSalesOrderDtls() async {
    await slsDtlUseCase.create(sDtl(1));
    await slsDtlUseCase.create(sDtl(2));
    await slsDtlUseCase.create(sDtl(3));
    final a = await slsDtlUseCase.getAll();
    // print('salesOrderDtls :-> ${a.resMsg()} \n//\n');
    return a.call((r) => r.isNotEmpty);
  }

  Tst approve() async {
    final res = await slsHdrUseCase.approve(1);
    return res.call((a) => a);
  }
}
