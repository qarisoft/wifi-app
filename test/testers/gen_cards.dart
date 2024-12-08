// import 'package:app/data/use_cases/cards/gen_cards.dart';
import 'dart:math';

import 'package:app/data/use_cases/cards/gen_cards.dart';
import 'package:app/domain/models/v2/gen_card/gen_card_dtls/gen_card_dtls.dart';
import 'package:app/domain/models/v2/gen_card/gen_card_hdr/gen_card_hdr.dart';
import 'package:app/domain/use_cases/v2/cards/cards.dart';

import 'types.dart';

class GenCardsTester extends Tester {
  GenCardsTester(super.service)
      : hdrUseCase = GnCardHdrUseCaseI(service: service),
        dtlUseCase = GnCardDtlUseCaseI(service: service);

  final GnCardHdrUseCase hdrUseCase;
  final GnCardDtlUseCase dtlUseCase;

  Tst generateBy([int i = 20]) async {
    final hdr =
        GnCardHdrData(description: 'generate $i for each card', status: true);
    final res = await hdrUseCase.create(hdr);
    // print('genCardHdr ${res.res()}\n//\n');
    return true;
  }

  Tst cards() async {
    final res = await hdrUseCase.getAll();
    // print('Hdr all:-> ${res.resMsg()} \n//\n');
    return res.call((a) => a.isNotEmpty);
  }

  get dtl {
    final rand = Random().nextInt(5);

    return GnCardDtlData(
        cardId: rand, quantity: Random().nextInt(20), hdrId: 1);
  }

  Tst createDtls() async {
    await dtlUseCase.create(dtl);
    await dtlUseCase.create(dtl);
    await dtlUseCase.create(dtl);
    await dtlUseCase.create(dtl);
    final res = await dtlUseCase.getAll();
    // print('Dtl all:-> ${res.resMsg()} \n//\n');
    return res.call((a) => a.isNotEmpty);
  }

  Tst approve([int hdrId = 1]) async {
    final res = await hdrUseCase.approve(hdrId);
    // print('approve hdr 1 :-> ${res.resMsg()} \n//\n');
    final dtls = await dtlUseCase.byHdrId(hdrId);
    final r = await service.sql((db) =>
        db.query(dtlUseCase.table, where: 'hdr_id=?', whereArgs: [hdrId]));
    // print('hdr 1 dtls :-> ${r} \n//\n');
    // print('hdr 1 dtls approved :-> ${dtls.resMsg()} \n//\n');
    return true;
  }
}
