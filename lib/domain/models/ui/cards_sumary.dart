import 'package:freezed_annotation/freezed_annotation.dart';

part 'cards_sumary.freezed.dart';
part 'cards_sumary.g.dart';

@freezed
class CardsSummery with _$CardsSummery {
  const factory CardsSummery({
    required int id,
    @Default('') String item,
    @Default(0) int available,
    @Default(0) int broken,
    @Default(0) int validReturned,
    @Default(0) int outDated,
    @Default(0) int generated,
    @Default(0) int store,
    @Default(0) int soled,
  }) = _CardsSummery;


factory CardsSummery.empty()=>const CardsSummery(id: 0);
  factory CardsSummery.fromJson(Map<String, dynamic> json) =>
      _$CardsSummeryFromJson(json);
}
