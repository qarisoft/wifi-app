import 'package:app/domain/models/v2/sales/sales_order/sales_detail/sales_detail.dart';
import 'package:app/domain/models/v2/sales/sales_order/sales_header/sales_header.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
abstract class OrderHdrWithDtls with _$OrderHdrWithDtls {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory OrderHdrWithDtls({
    required SalesOrderHeader header,
    required List<SalesOrderDtl> details,
  }) = _OrderHdrWithDtls;

  factory OrderHdrWithDtls.fromJson(Map<String, dynamic> json) =>
      _$OrderHdrWithDtlsFromJson(json);
}
