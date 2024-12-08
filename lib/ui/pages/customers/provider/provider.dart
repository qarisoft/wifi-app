import 'package:app/core/app.dart';
import 'package:app/domain/models/v2/sales/point_of_sales/point_of_sales.dart';
import 'package:app/domain/use_cases/v2/sales/sales.dart';
import 'package:app/ui/providers/v2/base.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class Customer extends ListR<PointOfSale, PointOfSlsData> {
  @override
  PointOfSalesUseCase get useCase => App.di<PointOfSalesUseCase>();
  @override
  int getId(PointOfSale d) => d.id;

  @override
  PointOfSlsData fromModel(PointOfSale d) => PointOfSlsData.fromModel(d);
}

final customerProvider =
    AsyncNotifierProvider<Customer, List<PointOfSale>>(Customer.new);



final getCustomerProvider = Provider.family<PointOfSale?, int>(
  (ref, int customerId)  {
    final c= ref.watch(customerProvider).whenOrNull(
          data: (d) => d.where((i) => i.id == customerId).firstOrNull,
        );
        return c;
  },
);
