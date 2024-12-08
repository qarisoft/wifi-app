import 'package:app/core/error/failure.dart';
// import 'package:app/data/use_cases/cards/gen_cards.dart';
import 'package:app/domain/models/v2/sales/point_of_sales/point_of_sales.dart';
import 'package:app/domain/models/v2/sales/sales_order/sales_detail/sales_detail.dart';
import 'package:app/domain/models/v2/sales/sales_order/sales_header/sales_header.dart';
import 'package:app/domain/models/v2/sales/sales_payment/sales_payment.dart';
import 'package:app/domain/use_cases/use_case.dart';

//
//
abstract class PointOfSalesUseCase
    implements CreateDeleteUpdate<PointOfSale, PointOfSlsData> {}

abstract class SlsOrderHdrUseCase
    implements CreateDeleteUpdate<SalesOrderHeader, SlsOrdHdrData> {
  FAOr<DbFailure, bool> approve(int id);
}

//
//
abstract class SlsOrderDtlUseCase
    implements CreateDeleteUpdate<SalesOrderDtl, SlsOrdDtlData> {
  FAOr<AppFailure, List<SalesOrderDtl>> byHdrId(int hdrId);
}

//
//
abstract class PaymentsUseCase
    implements CreateDeleteUpdate<Payment, PaymentData> {}
