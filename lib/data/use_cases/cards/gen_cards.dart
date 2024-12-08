import 'package:app/core/error/failure.dart';
import 'package:app/data/use_cases/create_edit_delete.dart';
import 'package:app/domain/models/v2/gen_card/gen_card_dtls/gen_card_dtls.dart';
import 'package:app/domain/models/v2/gen_card/gen_card_hdr/gen_card_hdr.dart';
import 'package:app/domain/use_cases/v2/cards/cards.dart';
import 'package:dartz/dartz.dart';
import 'package:sqflite/sqflite.dart';



class GnCardHdrUseCaseI
    extends CreateDeleteUpdateFactory<GenerateCardHeader, GnCardHdrData>
    implements GnCardHdrUseCase {
  GnCardHdrUseCaseI(
      {required super.service,
      super.table = 'generated_card_hdrs',
      super.toModelFunc = GenerateCardHeader.fromJson});

  @override
  FOr<bool> approve(int id) async {
    final res = await service.sql((db) => createApprove(db, id));
    return Right(res !=0);
  }

  Future<int> createApprove(Database db, int id) async {
    return await db.insert('generated_card_hdrs_approves', {'hdr_id': id});
  }
}

class GnCardDtlUseCaseI
    extends CreateDeleteUpdateFactory<GenerateCardDetails, GnCardDtlData>
    implements GnCardDtlUseCase {
  GnCardDtlUseCaseI(
      {required super.service,
      super.table = 'generated_card_dtls',
      super.toModelFunc = GenerateCardDetails.fromJson});

  @override
  FOr<List<GenerateCardDetails>> byHdrId(int hdrId) async {
    final res = await callThis(
      (d) => d.query(table, where: 'hdr_id=?', whereArgs: [hdrId]),
    );
    return res.fold(
      (l) => Left(l),
      (r) => Right(itemsFromDb(r)),
    );
  }
}
