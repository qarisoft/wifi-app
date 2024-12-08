import 'package:app/core/error/failure.dart';
import 'package:app/core/utils/extensions.dart';
import 'package:app/data/use_cases/db_caller.dart';
import 'package:app/data/use_cases/types.dart';
import 'package:app/domain/models/v2/operational_card/operational_card.dart';
import 'package:app/domain/use_cases/v2/cards/operational_cards.dart';
import 'package:dartz/dartz.dart';

class OplCardsUseCaseI extends DbCaller<OperationalCard>
    implements OplCardsUseCase {
  @override
  Future<Either<DbFailure, List<OperationalCard>>> call(Null params) async {
    final q = await super.callThis<Query>((db) => db.query(table));
    return q.fold((l) => Left(l), (r) => Right(itemsFromDb(r)));
  }

  OplCardsUseCaseI({required super.service, super.table = 'operational_cards'});

  @override
  toModel(MP q) {
    return OperationalCard.fromJson(q.fromDb());
  }
}
