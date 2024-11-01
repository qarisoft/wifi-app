import 'package:freezed_annotation/freezed_annotation.dart';
part 'sales_header.freezed.dart';
part 'sales_header.g.dart';

@freezed
class SalesOrderHeader with _$SalesOrderHeader {
  const factory SalesOrderHeader({
    required int id,
    required int status,
    required int yearID,
    required int orderType,

    //
    required String description,

    //
    required DateTime createdOn,
    required DateTime orderDate,
  }) = _SalesOrderHeader;

  factory SalesOrderHeader.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderHeaderFromJson(json);
}
