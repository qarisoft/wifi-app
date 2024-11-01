import 'package:freezed_annotation/freezed_annotation.dart';
part 'point_of_sales.freezed.dart';
part 'point_of_sales.g.dart';

@freezed
class PointOfSale with _$PointOfSale {
  const factory PointOfSale({
    required int id,
    //
    required String name,
    required String phone,
    required String location,
    required String description,

    //
    required int periorty,
    required int status,

    //
    required DateTime createdOn,
    required int createdBy,
    required DateTime lastupdatedOn,
    required int lastupdatedBy,
    required int updatedCount,
  }) = _PointOfSale;

  factory PointOfSale.fromJson(Map<String, dynamic> json) =>
      _$PointOfSaleFromJson(json);
}
