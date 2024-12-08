import 'package:app/core/error/failure.dart';
import 'package:app/data/use_cases/cards/gen_cards.dart';
import 'package:app/data/use_cases/create_edit_delete.dart';
import 'package:app/domain/models/v2/sales/sales_order/sales_detail/sales_detail.dart';
import 'package:app/domain/use_cases/v2/sales/sales.dart';
// import 'package:dartz/dartz.dart';

class SlsOrderDtlUseCaseI
    extends CreateDeleteUpdateFactory<SalesOrderDtl, SlsOrdDtlData>
    implements SlsOrderDtlUseCase {
  SlsOrderDtlUseCaseI(
      {required super.service,
      super.table = 'sales_order_dtls',
      super.toModelFunc = SalesOrderDtl.fromJson});
  
  @override
  getId()=>'rec_ser';


  @override
  FAOr<AppFailure, List<SalesOrderDtl>> byHdrId(int hdrId) async {
    return await callThis(
      (db) async {
        final q = await db.query(table, where: 'hdr_id=?', whereArgs: [hdrId]);
        return itemsFromDb(q);
      },
    );
  }


  // @override
  // Future<Either<AppFailure, bool>> update(SalesOrderDtl t, int id) {
  //   final res = SlsOrdDtlData.fromModel(t);
    
  // }
}
