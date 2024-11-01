import 'package:freezed_annotation/freezed_annotation.dart';
part 'year.freezed.dart';
part 'year.g.dart';

@freezed
class Year with _$Year {
  const factory Year({
    required int id,
    required int status,
    required bool isCurrent,
    //
    required DateTime startDate,
    required DateTime endDate,
    //
    required int openedBy,
    required DateTime openedOn,
    required String openDescription,
  }) = _Year;

  factory Year.fromJson(Map<String, dynamic> json) => _$YearFromJson(json);
}
