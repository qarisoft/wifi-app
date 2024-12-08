import 'package:app/domain/models/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'point_of_sales.freezed.dart';
part 'point_of_sales.g.dart';

@freezed
class PointOfSale with _$PointOfSale {
  @JsonSerializable(explicitToJson: true)
  const factory PointOfSale({
    required int id,
    required String name,
    @Default('') String phone,
    String? location,
    String? description,
    int? periorty,
    @JsonKey(name: 'is_active') required bool status,
    //
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'created_by') @Default(0) int createdBy,
    @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt,
    @JsonKey(name: 'last_updated_by') int? lastUpdatedBy,
    @JsonKey(name: 'update_counts') @Default(0) int updatedCount,
  }) = _PointOfSale;

  factory PointOfSale.fromJson(Map<String, dynamic> json) =>
      _$PointOfSaleFromJson(json);
}

@freezed
class PointOfSlsData extends Model with _$PointOfSlsData {
  @JsonSerializable(explicitToJson: true)
  const factory PointOfSlsData({
    required String name,
    required String phone,
    String? location,
    String? description,
    int? periorty,
    @JsonKey(name: 'is_active') @Default(true) bool status,
  }) = _PointOfSlsData;

  factory PointOfSlsData.fromModel(PointOfSale d) => PointOfSlsData(
        name: d.name,
        phone: d.phone,
        description: d.description,
        location: d.location,
        periorty: d.periorty,
        status: d.status,
      );

  factory PointOfSlsData.fromJson(Map<String, dynamic> json) =>
      _$PointOfSlsDataFromJson(json);
}
