import 'package:freezed_annotation/freezed_annotation.dart';
part 'gen_card_dtls.freezed.dart';
part 'gen_card_dtls.g.dart';

@freezed
class GenerateCardHeader with _$GenerateCardHeader {
  const factory GenerateCardHeader({
    required int id,
    required int isAproved,
    required int yearId,
    required int status,

    //
    required DateTime generateDate,
    required String description,

    //
    required DateTime createdOn,
    required int createdBy,
    required DateTime lastupdatedOn,
    required int lastupdatedBy,
    required int updatedCount,

    //
  }) = _GenerateCardHeader;

  factory GenerateCardHeader.fromJson(Map<String, dynamic> json) =>
      _$GenerateCardHeaderFromJson(json);
}
