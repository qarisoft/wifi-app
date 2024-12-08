import 'package:app/data/use_cases/create_edit_delete.dart';
import 'package:app/domain/models/v2/sales/point_of_sales/point_of_sales.dart';
import 'package:app/domain/use_cases/v2/sales/sales.dart';

//
//

//
//
class PointOfSalesUseCaseI
    extends CreateDeleteUpdateFactory<PointOfSale, PointOfSlsData>
    implements PointOfSalesUseCase {
  PointOfSalesUseCaseI(
      {required super.service,
      super.table = 'point_of_sales',
      super.toModelFunc = PointOfSale.fromJson});
}
