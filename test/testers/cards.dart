import 'dart:math';

import 'package:app/data/use_cases/cards/card.dart';
import 'package:app/domain/models/v2/card/card.dart';
import 'package:app/domain/use_cases/v2/cards/cards.dart';

import 'types.dart';

class CardsTester extends Tester {
  CardsTester(super.service) : useCase = CardsUseCaseI(service: service);

  final CardsUseCase useCase;

  get p {
    final rand = Random().nextInt(100) + 1;
    return CardData(
        code: 'cc$rand',
        speed: rand * 10,
        status: true,
        price: double.parse((rand * 8.6).toStringAsFixed(2)),
        name: 'cn$rand');
  }

  //
  Tst createCards() async {
    //
    await useCase.create(p);
    await useCase.create(p);
    await useCase.create(p);
    //
    await useCase.create(p);
    await useCase.create(p);
    await useCase.create(p);
    //
    final res = await useCase.getAll();
    return res.fold((l) {
      print(l.msg);
      return false;
    }, (r) {
      // print(r);
      // print('products :-> $r \n//\n');
      return r.isNotEmpty;
    });
  }
}
