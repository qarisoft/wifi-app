import 'package:app/domain/models/model.dart';
import 'package:app/domain/models/v2/user/user.dart';
import 'package:app/domain/models/v2/year/year.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_header.freezed.dart';
part 'sales_header.g.dart';

// CREATE TABLE sales_order_hdrs (
// id	              INTEGER,
// is_aproved	      INTEGER DEFAULT 0,
// point_id	        INTEGER DEFAULT 0,
// statement	        TEXT,
// year_id	          INTEGER NOT NULL DEFAULT 0,
// status	          INTEGER NOT NULL DEFAULT 0,
// created_at	      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
// last_updated_at	  TIMESTAMP,
// created_by	      INTEGER NOT NULL DEFAULT 0,
// last_updated_by	  INTEGER DEFAULT 0,
// update_counts	    INTEGER NOT NULL DEFAULT 0,
// PRIMARY KEY(id AUTOINCREMENT)
// );
@freezed
class SalesOrderHeader with _$SalesOrderHeader {
  const factory SalesOrderHeader({
    required int id,
    @Default('create order') String statement,
    @JsonKey(name: 'is_active') required bool status,
    @JsonKey(name: 'is_aproved') required bool isAproved,
    @JsonKey(name: 'point_id') required int salePointId,
    @JsonKey(name: 'year_id') required int yearID,
    @JsonKey(name: 'is_rejected') required bool isRejected,
    @JsonKey(name: 'is_valid') required bool isValid,
    @JsonKey(name: 'is_out_dated') required bool isOutDated,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'created_by') required int createdBy,
    @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt,
    @JsonKey(name: 'last_updated_by') required int lastUpdatedBy,
    @JsonKey(name: 'update_counts') required int updatedCount,
  }) = _SalesOrderHeader;

  factory SalesOrderHeader.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderHeaderFromJson(json);

  factory SalesOrderHeader.empty() => SalesOrderHeader(
        id: 0,
        status: true,
        isAproved: true,
        salePointId: 0,
        yearID: 0,
        isRejected: false,
        isValid: true,
        isOutDated: false,
        createdAt: DateTime.now(),
        createdBy: 0,
        lastUpdatedBy: 0,
        updatedCount: 0,
      );
}

@freezed
class SlsOrdHdrData extends Model with _$SlsOrdHdrData {
  const factory SlsOrdHdrData({
    @JsonKey(name: 'point_id') required int salePointId,
    @Default('null') String statement,
    @JsonKey(name: 'is_active') bool? status,
    @JsonKey(name: 'is_rejected') bool? isRejected,
    @JsonKey(name: 'is_valid') bool? isValid,
    @JsonKey(name: 'is_out_dated') bool? isOutDated,
  }) = _SlsOrdHdrData;

  factory SlsOrdHdrData.fromModel(SalesOrderHeader d) => SlsOrdHdrData(
        salePointId: d.salePointId,
        statement: d.statement,
        status: d.status,
      );

  factory SlsOrdHdrData.fromJson(Map<String, dynamic> json) =>
      _$SlsOrdHdrDataFromJson(json);
}

const slsOrdHTable = '''
CREATE TABLE sales_order_hdrs (
	id	              INTEGER,
  is_aproved	      INTEGER DEFAULT 0,    
	point_id	        INTEGER DEFAULT 0,
	statement	        TEXT,
	year_id	          INTEGER NOT NULL DEFAULT 0,
	is_active	          INTEGER NOT NULL DEFAULT 0,
	created_at	      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	last_updated_at	  TIMESTAMP,
	created_by	      INTEGER NOT NULL DEFAULT 0,
	last_updated_by	  INTEGER DEFAULT 0,
	update_counts	    INTEGER NOT NULL DEFAULT 0,
	PRIMARY KEY(id AUTOINCREMENT)
);
---
CREATE TRIGGER sales_order_hdrs_created
    AFTER INSERT on sales_order_hdrs
    BEGIN
    UPDATE sales_order_hdrs
    SET year_id= $currentYearSql ,
        created_by=$currentUserSql
    WHERE id=new.id;
END;
---
CREATE TRIGGER sales_order_hdrs_updated
    AFTER UPDATE on sales_order_hdrs
    WHEN old.created_by!=0 AND old.year_id!=0
    BEGIN
    UPDATE sales_order_hdrs
    SET last_updated_at=datetime('now'),
        last_updated_by=$currentUserSql,
        update_counts=old.update_counts+1
    WHERE id=new.id;
END;
''';

// @freezed
// class SlsOrdHdrRes with _$SlsOrdHdrRes {
//   const factory SlsOrdHdrRes({
//     int? id,
//     @JsonKey(name: 'is_aproved') bool? isAproved,
//     @JsonKey(name: 'point_id') int? salePointId,
//     @Default('') String statement,
//     @JsonKey(name: 'year_id') int? yearID,
//     int? status,
//     @JsonKey(name: 'created_at') DateTime? createdAt,
//     @JsonKey(name: 'created_by') int? createdBy,
//     @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt,
//     @JsonKey(name: 'last_updated_by') int? lastUpdatedBy,
//     @JsonKey(name: 'update_counts') int? updatedCount,
//   }) = _SlsOrdHdrRes;

//   factory SlsOrdHdrRes.fromJson(Map<String, dynamic> json) =>
//       _$SlsOrdHdrResFromJson(json);
// }
