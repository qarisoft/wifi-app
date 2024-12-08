import 'package:app/data/use_cases/create_edit_delete.dart';
import 'package:app/domain/models/v2/card/card.dart';
import 'package:app/domain/use_cases/v2/cards/cards.dart';

class CardsUseCaseI extends CreateDeleteUpdateFactory<Card, CardData>
    implements CardsUseCase {
  CardsUseCaseI(
      {required super.service,
      super.table = 'cards',
      super.toModelFunc = Card.fromJson});
}
