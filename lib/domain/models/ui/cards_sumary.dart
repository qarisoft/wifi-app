import 'package:freezed_annotation/freezed_annotation.dart';
part 'cards_sumary.freezed.dart';
part 'cards_sumary.g.dart';

@freezed
class CardsSummery with _$CardsSummery {
  const factory CardsSummery({
    required String item,
    required int avilable,
    required int soled,
    required int total,
  }) = _CardsSummery;

  factory CardsSummery.fromJson(Map<String, dynamic> json) =>
      _$CardsSummeryFromJson(json);
}
