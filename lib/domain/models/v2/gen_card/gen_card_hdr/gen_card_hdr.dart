import 'package:app/domain/models/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen_card_hdr.freezed.dart';
part 'gen_card_hdr.g.dart';

// CREATE TABLE generated_card_hdrs (
// 	id					      INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
// 	description			  TEXT,
// 	status				    INTEGER NOT NULL DEFAULT 0,
// 	is_aproved			  INTEGER NOT NULL DEFAULT 0,
// 	year_id				    INTEGER NOT NULL DEFAULT 0,
// 	generated_date		TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
// 	created_at	      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
// 	last_updated_at	  TIMESTAMP,
// 	created_by	      INTEGER NOT NULL DEFAULT 0,
// 	last_updated_by	  INTEGER NOT NULL DEFAULT 0,
// 	update_counts		  INTEGER NOT NULL DEFAULT 0
// );
@freezed
class GenerateCardHeader with _$GenerateCardHeader {
  const factory GenerateCardHeader({
    @Default('') String description,
    required int id,
    @JsonKey(name: 'is_active') required bool status,
    @JsonKey(name: 'year_id') required int yearId,
    @JsonKey(name: 'is_aproved') required bool isAproved,
    @JsonKey(name: 'generated_date') required DateTime generatedDate,
    //
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'created_by') required int createdBy,
    @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt,
    @JsonKey(name: 'last_updated_by') required int lastUpdatedBy,
    @JsonKey(name: 'update_counts') required int updatedCount,

    //
  }) = _GenerateCardHeader;

  factory GenerateCardHeader.fromJson(Map<String, dynamic> json) =>
      _$GenerateCardHeaderFromJson(json);
}

@freezed
class GnCardHdrRes with _$GnCardHdrRes {
  const factory GnCardHdrRes({
    @Default('') String description,
    int? id,
    @JsonKey(name: 'is_active') required bool status,
    @JsonKey(name: 'year_id') int? yearId,
    @JsonKey(name: 'is_aproved') bool? isAproved,
    @JsonKey(name: 'generated_date') DateTime? generatedDate,
    //
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'created_by') int? createdBy,
    @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt,
    @JsonKey(name: 'last_updated_by') int? lastUpdatedBy,
    @JsonKey(name: 'update_counts') int? updatedCount,

    //
  }) = _GnCardHdrRes;

  factory GnCardHdrRes.fromJson(Map<String, dynamic> json) =>
      _$GnCardHdrResFromJson(json);
}

@freezed
class GnCardHdrData extends Model with _$GnCardHdrData {
  const factory GnCardHdrData({
    @Default('') String description,
    @JsonKey(name: 'is_active') @Default(true) bool status,
    @JsonKey(name: 'generated_date') DateTime? generatedDate,
  }) = _GnCardHdrData;

  factory GnCardHdrData.fromJson(Map<String, dynamic> json) =>
      _$GnCardHdrDataFromJson(json);
}

const genCardHdr = '''
CREATE TABLE generated_card_hdrs (
	id					      INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	description			  TEXT,
	is_active				  INTEGER NOT NULL DEFAULT 0,
	is_aproved			  INTEGER NOT NULL DEFAULT 0,
	year_id				    INTEGER NOT NULL DEFAULT 0,
	generated_date		TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	created_at	      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	last_updated_at	  TIMESTAMP,
	created_by	      INTEGER NOT NULL DEFAULT 0,
	last_updated_by	  INTEGER NOT NULL DEFAULT 0,
	update_counts		  INTEGER NOT NULL DEFAULT 0
);
---
CREATE TRIGGER generated_card_hdrs_created
AFTER INSERT on generated_card_hdrs
BEGIN
UPDATE generated_card_hdrs
SET created_by=(SELECT u.id from users u WHERE u.is_current_user=1 and u.is_active=1 LIMIT 1)
	WHERE id=new.id;
END;
---
CREATE TRIGGER generated_card_hdrs_updated
    AFTER UPDATE on generated_card_hdrs
    WHEN old.created_by!=0 AND old.is_aproved=0
    BEGIN
    UPDATE generated_card_hdrs
        SET last_updated_at = datetime('now'),
            update_counts   = old.update_counts+1,
            last_updated_by = (SELECT id FROM users WHERE is_current_user=1 and is_active=1 LIMIT 1) 
    	WHERE id=new.id AND is_aproved=0;
END;
''';
