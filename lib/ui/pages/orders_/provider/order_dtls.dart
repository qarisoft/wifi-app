import 'package:app/core/app.dart';
// import 'package:app/core/utils/extensions.dart';
import 'package:app/domain/models/v2/sales/sales_order/sales_detail/sales_detail.dart';
import 'package:app/domain/use_cases/v2/sales/sales.dart';
import 'package:app/ui/providers/v2/base.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'order_dtls.g.dart';
final orderDtlsProvider =
    AsyncNotifierProvider<OrderDtls, List<SalesOrderDtl>>(OrderDtls.new);

class OrderDtls extends ListR<SalesOrderDtl, SlsOrdDtlData> {
  @override
  SlsOrderDtlUseCase get useCase => App.di<SlsOrderDtlUseCase>();

  @override
  SlsOrdDtlData fromModel(SalesOrderDtl d) => SlsOrdDtlData.fromModel(d);

  @override
  int getId(SalesOrderDtl d) => d.id;
}

// final orderDtlsOfHdrProvider = Pro.family<, >((ref, ) {
//   return ;
// });
// final Provider = AsyncNotifierProviderFamily<, , >(.new);
final orderDtlsOfHdr =
    FutureProvider.family<List<SalesOrderDtl>, int>((ref, int hdrId) async {
  return ref.watch(orderDtlsProvider).when(
        data: (d) => d.where((i) => i.hdrId == hdrId).toList(),
        error: (_, __) => [],
        loading: () => [],
      );
  // final a = ref.watch(orderDtlsProvider);
  // await a.value
});



// final a = FutureProvider(_createFn)