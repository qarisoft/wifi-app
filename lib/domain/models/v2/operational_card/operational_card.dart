import 'package:freezed_annotation/freezed_annotation.dart';

part 'operational_card.freezed.dart';
part 'operational_card.g.dart';

@freezed
class OperationalCard with _$OperationalCard {
  const factory OperationalCard({
    @JsonKey(name: 'rec_ser') required int id,
    @JsonKey(name: 'card_id') required int cardId,
    @JsonKey(name: 'year_id') required int yearId,
    @JsonKey(name: 'in_qty') required int inQty,
    @JsonKey(name: 'out_qty') required int outQty,
    @JsonKey(name: 'card_price') required double cardPrice,
    //
    @JsonKey(name: 'is_free') required bool isFree,
    @JsonKey(name: 'is_generated') required bool isGenerated,
    @JsonKey(name: 'is_valid') required bool isValid,
    @JsonKey(name: 'is_rejected') required bool isRejected,
    @JsonKey(name: 'is_out_dated') required bool isOutDated,
    //
    @JsonKey(name: 'source_id') required int sourceId,
    @JsonKey(name: 'source_table') required String sourceTable,
    //
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'created_by') required int createdBy,
    required String description,
    // @JsonKey(name: 'is_active') required bool status,
  }) = _OperationalCard;

  factory OperationalCard.fromJson(Map<String, dynamic> json) =>
      _$OperationalCardFromJson(json);
}
