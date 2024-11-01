import 'package:freezed_annotation/freezed_annotation.dart';
part 'card.freezed.dart';
part 'card.g.dart';

@freezed
class Card with _$Card {
  const factory Card({
    required int id,
    required String name,
    required String speed,
    required String bandWidth,
    required String code,
    required int status,
    //
    required DateTime createdOn,
    required int createdBy,
    required DateTime lastupdatedOn,
    required int lastupdatedBy,
    required int updatedCount,
  }) = _Card;
  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);
}
