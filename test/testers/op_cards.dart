import 'package:app/data/use_cases/cards/op_cards.dart';
import 'package:app/domain/use_cases/v2/cards/operational_cards.dart';

import 'types.dart';

class OpCardsTester extends Tester {
  OpCardsTester(super.service) : useCase = OplCardsUseCaseI(service: service);

  final OplCardsUseCase useCase;

  Tst all() async {
    final res = await useCase(null);
    // print('operational cards :-> ${res.resMsg()} \n//\n');
    return res.call((a) => a.isNotEmpty);
  }
}
