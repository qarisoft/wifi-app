// import 'package:app/domain/models/v2/operational_card/operational_card.dart';
// import 'package:app/domain/use_cases/use_case.dart';

import 'package:app/core/error/failure.dart';
import 'package:app/domain/models/v2/operational_card/operational_card.dart';
import 'package:app/domain/use_cases/use_case.dart';

abstract class OplCardsUseCase
    implements UseCase<DbFailure, List<OperationalCard>, Null> {}
