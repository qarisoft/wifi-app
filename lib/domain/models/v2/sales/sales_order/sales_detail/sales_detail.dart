import 'package:freezed_annotation/freezed_annotation.dart';
part 'sales_detail.freezed.dart';
part 'sales_detail.g.dart';

@freezed
class SalesOrderDtl with _$SalesOrderDtl {
  const factory SalesOrderDtl({
    required int id,
    required int orderId,
    required int cardId,
    required int inQty,
    required int outQty,
    required int status,

    //
    required double cardPrice,

    //
    required bool isFree,
    required bool isRejected,
    required bool isOutDated,

    //
    //
    required DateTime createdOn,
    required int createdBy,
    required DateTime lastupdatedOn,
    required int lastupdatedBy,
    required int updatedCount,
  }) = _SalesOrderDtl;

  factory SalesOrderDtl.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderDtlFromJson(json);
}
