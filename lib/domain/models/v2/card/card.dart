// import 'package:app/core/utils/extensions.dart';
// import 'package:app/core/utils/extensions.dart';
import 'package:app/domain/models/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card.freezed.dart';
part 'card.g.dart';

@freezed
class Card with _$Card {
  const factory Card({
    @Default(0) int speed,
    required int id,
    required double price,
    @JsonKey(name: 'is_active') required bool status,
    @Default('') String name,
    @Default('') String code,
    @JsonKey(name: 'band_width') int? bandWidth,
    @JsonKey(name: 'is_free') required bool isFree,
    //
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'created_by') required int createdBy,
    @JsonKey(name: 'last_updated_at') DateTime? lastupdatedAt,
    @JsonKey(name: 'last_updated_by') required int lastupdatedBy,
    @JsonKey(name: 'update_counts') required int updatedCount,
  }) = _Card;

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);
}

@freezed
class CardData extends Model with _$CardData {
  const factory CardData({
    required double price,
    @Default(0) int speed,
    required String name,
    required String code,
    @JsonKey(name: 'is_active') bool? status,
    @JsonKey(name: 'band_width') int? bandWidth,
    @JsonKey(name: 'is_free') bool? isFree,
  }) = _CardData;

  factory CardData.fromModel(Card crd) => CardData(
        price: crd.price,
        speed: crd.speed,
        name: crd.name,
        code: crd.code,
        bandWidth: crd.bandWidth,
        status: crd.status,
        isFree: crd.isFree,
      );

  factory CardData.fromJson(Map<String, dynamic> json) =>
      _$CardDataFromJson(json);
}
