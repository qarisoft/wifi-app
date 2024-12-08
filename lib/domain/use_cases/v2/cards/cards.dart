import 'package:app/core/error/failure.dart';
import 'package:app/domain/models/v2/card/card.dart';
import 'package:app/domain/models/v2/gen_card/gen_card_dtls/gen_card_dtls.dart';
import 'package:app/domain/models/v2/gen_card/gen_card_hdr/gen_card_hdr.dart';
import 'package:app/domain/use_cases/use_case.dart';
import 'package:dartz/dartz.dart';

abstract class CardsUseCase implements CreateDeleteUpdate<Card, CardData> {}

//
abstract class GnCardHdrUseCase
    implements CreateDeleteUpdate<GenerateCardHeader, GnCardHdrData> {
  Future<Either<AppFailure, bool>> approve(int id);
}

//
abstract class GnCardDtlUseCase
    implements CreateDeleteUpdate<GenerateCardDetails, GnCardDtlData> {
  Future<Either<AppFailure, List<GenerateCardDetails>>> byHdrId(int hdrId);
}
