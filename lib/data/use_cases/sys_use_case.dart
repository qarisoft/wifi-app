import 'package:app/core/error/failure.dart';
import 'package:app/domain/use_cases/v2/core.dart';
import 'package:app/domain/use_cases/v2/years/year.dart';
import 'package:dartz/dartz.dart';

class SysSetupUseCaseI implements SysSetupUseCase {
  @override
  Future<Either<SetupFailure, bool>> call(Null params) async {
    final y = await yearsUseCase.current();
    return y.fold((l) => const Left(SetupFailure()), (r) => Right(r.isCurrent));
  }

  final YearsUseCase yearsUseCase;

  SysSetupUseCaseI({required this.yearsUseCase});
}
