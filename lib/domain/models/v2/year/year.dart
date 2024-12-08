import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model.dart';

part 'year.freezed.dart';
part 'year.g.dart';

// CREATE TABLE years (
// 	id	        	      INTEGER NOT NULL,
// 	start_date		      TIMESTAMP NOT NULL,
// 	end_date	    	    TIMESTAMP NOT NULL,
// 	is_current_year	    INTEGER NOT NULL DEFAULT 0,
// 	opened_by	    	    INTEGER NOT NULL DEFAULT 0,
// 	opened_at	    	    TIMESTAMP,
// 	open_description	  TEXT,
// 	status	            INTEGER NOT NULL DEFAULT 0,
// 	PRIMARY KEY(id AUTOINCREMENT)
// );
@freezed
class Year with _$Year {
  @JsonSerializable(explicitToJson: true)
  const factory Year({
    required int id,
    @JsonKey(name: 'is_active') required bool status,
    @JsonKey(name: 'is_current_year') required bool isCurrent,
    @JsonKey(name: 'start_date') required DateTime startDate,
    @JsonKey(name: 'end_date') required DateTime endDate,
    @JsonKey(name: 'opened_by') int? openedBy,
    @JsonKey(name: 'opened_at') DateTime? openedAt,
    @JsonKey(name: 'open_description') required String openDescription,
  }) = _Year;

  factory Year.fromJson(Map<String, dynamic> json) => _$YearFromJson(json);
}

@freezed
class YearData extends Model with _$YearData {
  @JsonSerializable(explicitToJson: true)
  const factory YearData({
    @JsonKey(name: 'is_active') bool? status,
    @JsonKey(name: 'start_date') DateTime? startDate,
    @JsonKey(name: 'end_date') DateTime? endDate,
    @JsonKey(name: 'opened_at') DateTime? openedAt,
    @JsonKey(name: 'open_description') String? openDescription,
  }) = _YearData;

  factory YearData.fromJson(Map<String, dynamic> json) =>
      _$YearDataFromJson(json);
}

const yearsTable = '''
CREATE TABLE years (
	id	        	    INTEGER NOT NULL,
	start_date		    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	end_date	    	  TIMESTAMP NOT NULL,
	is_current_year	  INTEGER NOT NULL DEFAULT 0,
	opened_by	    	  INTEGER NOT NULL DEFAULT 0,
	opened_at	    	  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	open_description	TEXT NOT NULL DEFAULT "",
	is_active	        INTEGER NOT NULL DEFAULT 0,
	PRIMARY KEY(id AUTOINCREMENT)
);
---
CREATE TRIGGER year_opened
    AFTER UPDATE on years
    WHEN new.is_current_year=1 and new.is_active=1
    BEGIN
    UPDATE years
    SET is_current_year=0
    	WHERE id!=new.id AND is_active=1;
END;
''';

const currentYearSql =
    '(SELECT id from years WHERE is_current_year=1 AND is_active=1 LIMIT 1)';

// @freezed
// class YearRes with _$YearRes {
//   @JsonSerializable(explicitToJson: true)
//   const factory YearRes({
//     int? id,
//     @JsonKey(name: 'is_active')  bool? status,
//     @JsonKey(name: 'is_current_year') bool? isCurrent,
//     @JsonKey(name: 'start_date') DateTime? startDate,
//     @JsonKey(name: 'end_date') DateTime? endDate,
//     @JsonKey(name: 'opened_by') int? openedBy,
//     @JsonKey(name: 'opened_at') DateTime? openedAt,
//     @JsonKey(name: 'open_description') String? openDescription,
//   }) = _YearRes;

//   factory YearRes.fromJson(Map<String, dynamic> json) =>
//       _$YearResFromJson(json);
// }
