import 'package:app/domain/models/model.dart';
import 'package:app/domain/models/v2/user/user.dart';
import 'package:app/domain/models/v2/year/year.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen_card_dtls.freezed.dart';
part 'gen_card_dtls.g.dart';

// CREATE TABLE generated_card_dtls (
// 	  rec_ser	            INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
// 	  hdr_id	            INTEGER NOT NULL,
// 	  card_id	            INTEGER NOT NULL,
// 	  quantity	          INTEGER NOT NULL DEFAULT 1,
// 	  description	        TEXT DEFAULT 'was generated',
// 	  is_aproved			    INTEGER NOT NULL DEFAULT 0,
//    year_id				      INTEGER NOT NULL DEFAULT 0,
// 	  created_at	        TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
// 	  last_updated_at	    TIMESTAMP,
// 	  created_by	        INTEGER NOT NULL DEFAULT 0,
// 	  last_updated_by	    INTEGER NOT NULL DEFAULT 0,
// 	  update_counts		    INTEGER NOT NULL DEFAULT 0,
// 	  FOREIGN KEY (hdr_id) REFERENCES generated_card_hdrs(id)
// );
@freezed
class GenerateCardDetails with _$GenerateCardDetails {
  const factory GenerateCardDetails({
    @JsonKey(name: 'rec_ser') required int id,
    required int quantity,
    @JsonKey(name: 'hdr_id') required int hdrId,
    @JsonKey(name: 'card_id') required int cardId,
    @JsonKey(name: 'is_active') required bool status,
    required String description,
    @JsonKey(name: 'is_aproved') required bool isApproved,
    //
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'created_by') required int createdBy,
    @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt,
    @JsonKey(name: 'last_updated_by') required int lastUpdatedBy,
    @JsonKey(name: 'update_counts') required int updatedCount,
  }) = _GenerateCardDetails;

  factory GenerateCardDetails.fromJson(Map<String, dynamic> json) =>
      _$GenerateCardDetailsFromJson(json);
}

@freezed
class GnCardDtlData extends Model with _$GnCardDtlData {
  const factory GnCardDtlData({
    int? quantity,
    @JsonKey(name: 'hdr_id') int? hdrId,
    @JsonKey(name: 'card_id') required int cardId,
    @JsonKey(name: 'is_active') @Default(true) bool status,
    String? description,
  }) = _GnCardDtlData;

  factory GnCardDtlData.fromJson(Map<String, dynamic> json) =>
      _$GnCardDtlDataFromJson(json);
}

// @freezed
// class GnCardDtlRes with _$GnCardDtlRes {
//   const factory GnCardDtlRes({
//     @JsonKey(name: 'rec_ser') int? id,
//     int? quantity,
//     @JsonKey(name: 'hdr_id') int? hdrId,
//     @JsonKey(name: 'card_id') int? cardId,
//     @JsonKey(name: 'is_active') @Default(true) bool status,
//     String? description,
//     //
//     @JsonKey(name: 'created_at') DateTime? createdAt,
//     @JsonKey(name: 'created_by') int? createdBy,
//     @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt,
//     @JsonKey(name: 'last_updated_by') int? lastUpdatedBy,
//     @JsonKey(name: 'update_counts') int? updatedCount,
//   }) = _GnCardDtlRes;

//   factory GnCardDtlRes.fromJson(Map<String, dynamic> json) =>
//       _$GnCardDtlResFromJson(json);
// }

const genCardDtlTabel = '''
CREATE TABLE generated_card_dtls (
	rec_ser	            INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	hdr_id	            INTEGER NOT NULL,
	card_id	            INTEGER NOT NULL,
	card_price	        REAL NOT NULL DEFAULT 0,
	quantity	          INTEGER NOT NULL DEFAULT 1,
	is_active	          INTEGER NOT NULL DEFAULT 0,
	description	        TEXT DEFAULT 'was generated',
	is_aproved			    INTEGER NOT NULL DEFAULT 0,
	is_free			        INTEGER NOT NULL DEFAULT 0,
  year_id				      INTEGER NOT NULL DEFAULT 0,
	created_at	        TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	last_updated_at	    TIMESTAMP,
	created_by	        INTEGER NOT NULL DEFAULT 0,
	last_updated_by	    INTEGER NOT NULL DEFAULT 0,
	update_counts		    INTEGER NOT NULL DEFAULT 0,
	FOREIGN KEY (hdr_id) REFERENCES generated_card_hdrs(id)
);
---
CREATE TRIGGER generated_card_dtls_check
  BEFORE update on generated_card_dtls
  BEGIN
  SELECT
    CASE 
      WHEN old.is_aproved=1  THEN
        RAISE (ABORT,'you can not update this record is approved')
        END;
END;
---
CREATE TRIGGER generated_card_dtls_created
AFTER INSERT on generated_card_dtls
BEGIN
UPDATE generated_card_dtls
SET created_by=$currentUserSql,
    year_id=$currentYearSql,
    card_price=(SELECT c.price from cards c where c.id=new.card_id)
	WHERE rec_ser=new.rec_ser;
END;
---
CREATE TRIGGER generated_card_dtls_updated
AFTER UPDATE on generated_card_dtls
WHEN old.created_by!=0 AND old.is_aproved=0
BEGIN
UPDATE generated_card_dtls
	SET last_updated_at = datetime('now'),
		  update_counts   = old.update_counts+1,
		  last_updated_by = $currentUserSql 
	WHERE rec_ser=new.rec_ser AND is_aproved=0;
END;
''';
