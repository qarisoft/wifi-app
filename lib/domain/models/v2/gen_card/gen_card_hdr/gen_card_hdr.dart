import 'package:freezed_annotation/freezed_annotation.dart';
part 'gen_card_hdr.freezed.dart';
part 'gen_card_hdr.g.dart';

@freezed
class GenerateCardDetails with _$GenerateCardDetails {
  const factory GenerateCardDetails({
    required int id,
    required int hdrId,
    required int quantity,
    required int cardId,

    //
    required String description,

    //
    required DateTime createdOn,
    required int createdBy,
    required DateTime lastupdatedOn,
    required int lastupdatedBy,
    required int updatedCount,
  }) = _GenerateCardDetails;

  factory GenerateCardDetails.fromJson(Map<String, dynamic> json) =>
      _$GenerateCardDetailsFromJson(json);
}
