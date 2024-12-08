import 'package:app/core/error/failure.dart';
// import 'package:app/data/use_cases/cards/gen_cards.dart';
import 'package:app/data/use_cases/create_edit_delete.dart';
import 'package:app/domain/models/v2/sales/sales_order/sales_header/sales_header.dart';
import 'package:app/domain/use_cases/v2/sales/sales.dart';
import 'package:dartz/dartz.dart';


class SlsOrderHdrUseCaseI
    extends CreateDeleteUpdateFactory<SalesOrderHeader, SlsOrdHdrData>
    implements SlsOrderHdrUseCase {
  SlsOrderHdrUseCaseI(
      {required super.service,
      super.table = 'sales_order_hdrs',
      super.toModelFunc = SalesOrderHeader.fromJson});

  //
  @override
  FAOr<DbFailure, bool> approve(int id) async {
    final res = await callThis(
      (db) => db.insert('sales_order_hdrs_approves', {'hdr_id': id}),
    );
    return res.fold((l) => Left(DbFailure(l.msg)), (r) => Right(r != 0));
  }
}
