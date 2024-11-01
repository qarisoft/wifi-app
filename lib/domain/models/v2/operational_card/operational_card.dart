import 'package:freezed_annotation/freezed_annotation.dart';
part 'operational_card.freezed.dart';
part 'operational_card.g.dart';

@freezed
class OperationalCard with _$OperationalCard {
  const factory OperationalCard({
    required int id,
    required int yearId,
    //
    required int cardId,
    required int cardprice,
    required int isFree,
    required int status,
    //
    required int inQty,
    required int outQty,
    //
    required int typeHdrId,
    required int typeDtlId,

    //
    required DateTime createdOn,
  }) = _OperationalCard;

  factory OperationalCard.fromJson(Map<String, dynamic> json) =>
      _$OperationalCardFromJson(json);
}
