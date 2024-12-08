import 'package:app/core/app.dart';
import 'package:app/domain/models/v2/sales/sales_order/sales_header/sales_header.dart';
import 'package:app/domain/use_cases/v2/sales/sales.dart';
import 'package:app/ui/providers/v2/base.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'provider.g.dart';

// @Riverpod(keepAlive: true)
class OrderHdr extends ListR<SalesOrderHeader, SlsOrdHdrData> {
  @override
  SlsOrderHdrUseCase get useCase => App.di<SlsOrderHdrUseCase>();

  approve(int id) => callFn(() => useCase.approve(id));

  @override
  SlsOrdHdrData fromModel(SalesOrderHeader d) => SlsOrdHdrData.fromModel(d);
  @override
  int getId(SalesOrderHeader d) => d.id;
}

//
//
final orderHdrProvider =
    AsyncNotifierProvider<OrderHdr, List<SalesOrderHeader>>(OrderHdr.new);
//
//
final orderHdr = FutureProvider.family<SalesOrderHeader?, int>(
  (ref, int hdrId) async {
    return ref.watch(orderHdrProvider).whenOrNull(
          data: (d) => d.where((i) => i.id == hdrId).firstOrNull,
        );
  },
);
