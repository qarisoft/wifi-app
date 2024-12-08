import 'package:app/core/app.dart';
import 'package:app/domain/models/v2/card/card.dart';
import 'package:app/domain/use_cases/v2/cards/cards.dart';
import 'package:app/ui/providers/v2/base.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class CardsProvider extends ListR<Card, CardData> {
  @override
  CardsUseCase get useCase => App.di<CardsUseCase>();

  @override
  CardData fromModel(Card d) => CardData.fromModel(d);

  @override
  int getId(Card d) => d.id;

  // @override
  // create(CardData formData) async {
  //   final res = await useCase.create(formData);
  //   print(res);
  //   end();
  //   // TODO: implement create
  // }
}

final cardsProvider =
    AsyncNotifierProvider<CardsProvider, List<Card>>(CardsProvider.new);
