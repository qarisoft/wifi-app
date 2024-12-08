import 'package:app/domain/models/model.dart';
import 'package:app/domain/models/v2/year/year.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_detail.freezed.dart';
part 'sales_detail.g.dart';

@freezed
class SalesOrderDtl with _$SalesOrderDtl {
  @JsonSerializable(explicitToJson: true)
  const factory SalesOrderDtl({
    required String description,
    //
    @JsonKey(name: 'is_active') required bool status,
    @JsonKey(name: 'rec_ser') required int id,
    @JsonKey(name: 'hdr_id') required int hdrId,
    @JsonKey(name: 'card_id') required int cardId,
    @JsonKey(name: 'card_price') required double cardPrice,
    @JsonKey(name: 'in_qty') required int inQty,
    @JsonKey(name: 'out_qty') required int outQty,
    @JsonKey(name: 'year_id') required int yearID,
    //
    @JsonKey(name: 'is_aproved') required bool isApproved,
    @JsonKey(name: 'is_free') required bool isFree,
    @JsonKey(name: 'is_rejected') required bool isRejected,
    @JsonKey(name: 'is_valid') required bool isValid,
    @JsonKey(name: 'is_out_dated') required bool isOutDated,
    //
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'created_by') required int createdBy,
    @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt,
    @JsonKey(name: 'last_updated_by') required int lastUpdatedBy,
    @JsonKey(name: 'update_counts') required int updatedCount,
  }) = _SalesOrderDtl;

  factory SalesOrderDtl.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderDtlFromJson(json);
}

@freezed
class SlsOrdDtlData extends Model with _$SlsOrdDtlData {
  @JsonSerializable(explicitToJson: true)
  const factory SlsOrdDtlData({
    String? description,
    //
    @JsonKey(name: 'is_active') @Default(true) bool status,
    @JsonKey(name: 'hdr_id') required int hdrId,
    @JsonKey(name: 'card_id') required int cardId,
    @JsonKey(name: 'in_qty') int? inQty,
    @JsonKey(name: 'out_qty') required int outQty,
    @JsonKey(name: 'year_id') int? yearID,
    //
    @JsonKey(name: 'is_free') bool? isFree,
    @JsonKey(name: 'is_rejected') bool? isRejected,
    @JsonKey(name: 'is_valid') bool? isValid,
    @JsonKey(name: 'is_out_dated') bool? isOutDated,
  }) = _SlsOrdDtlData;

  factory SlsOrdDtlData.fromModel(SalesOrderDtl dt) =>
      SlsOrdDtlData(hdrId: dt.hdrId, cardId: dt.cardId, outQty: dt.outQty);

  factory SlsOrdDtlData.fromJson(Map<String, dynamic> json) =>
      _$SlsOrdDtlDataFromJson(json);
}

@freezed
class SlsOrdDtlDataIn extends Model with _$SlsOrdDtlDataIn {
  @JsonSerializable(explicitToJson: true)
  const factory SlsOrdDtlDataIn({
    @JsonKey(name: 'is_active') bool? status,
    String? description,
    //
    @JsonKey(name: 'hdr_id') required int hdrId,
    @JsonKey(name: 'card_id') required int cardId,
    @JsonKey(name: 'out_qty') required int outQty,
    @JsonKey(name: 'year_id') int? yearID,
    //
    @JsonKey(name: 'is_free') bool? isFree,
    @JsonKey(name: 'is_rejected') required bool isRejected,
    @JsonKey(name: 'is_valid') required bool isValid,
    @JsonKey(name: 'is_out_dated') bool? isOutDated,
  }) = _SlsOrdDtlDataIn;

  factory SlsOrdDtlDataIn.fromJson(Map<String, dynamic> json) =>
      _$SlsOrdDtlDataInFromJson(json);
}

const salesOrderDtlTabel = '''
 CREATE TABLE sales_order_dtls (
	rec_ser	        INTEGER,
	is_aproved	    INTEGER DEFAULT 0,
	description	    TEXT DEFAULT 'order',
  
	hdr_id	        INTEGER NOT NULL,
	card_id	        INTEGER NOT NULL,
	 	
	in_qty	        INTEGER DEFAULT 0,
	out_qty	        INTEGER DEFAULT 0,
	 	
	is_free	        INTEGER DEFAULT 0,
	
	is_rejected	    INTEGER DEFAULT 0,
	is_valid	    INTEGER DEFAULT 1,
	is_out_dated	INTEGER DEFAULT 0,
	year_id	        INTEGER NOT NULL DEFAULT 0,
	
	is_active	        INTEGER DEFAULT 0,
    created_at	    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	last_updated_at	TIMESTAMP,
	created_by	    INTEGER DEFAULT 0,
	last_updated_by	INTEGER DEFAULT 0,
	update_counts	INTEGER DEFAULT 0,
	PRIMARY KEY(rec_ser AUTOINCREMENT)
);
---
CREATE TRIGGER sales_order_dtls_created_check
    BEFORE INSERT on sales_order_dtls
    BEGIN
    SELECT
        CASE 
            WHEN new.in_qty!=0 AND new.out_qty!=0 THEN
					RAISE (ABORT,'in_qty and out_qty can not both be positive')
                END;
END;
---
CREATE TRIGGER sales_order_dtls_created
    AFTER INSERT on sales_order_dtls
    BEGIN
    UPDATE sales_order_dtls
    SET year_id=$currentYearSql,
        created_by=(SELECT id from users WHERE is_current_user=1 AND is_active=1 LIMIT 1)
    WHERE rec_ser=new.rec_ser;
END;
---
CREATE TRIGGER sales_order_dtls_updated
    AFTER UPDATE on sales_order_dtls
    WHEN old.created_by!=0 AND old.year_id!=0
    BEGIN
    UPDATE sales_order_dtls
    SET last_updated_at=datetime('now'),
        last_updated_by=(SELECT id from users WHERE is_current_user=1 AND is_active=1 LIMIT 1),
        update_counts=old.update_counts+1
    WHERE rec_ser=new.rec_ser;
END;
 ''';

// @freezed
// class SlsOrdDtlRes with _$SlsOrdDtlRes {
//   @JsonSerializable(explicitToJson: true)
//   const factory SlsOrdDtlRes({
//     //
//     @JsonKey(name: 'rec_ser') int? id,
//     //
//     @JsonKey(name: 'is_active')  bool? status,
//     String? description,
//     //
//     @JsonKey(name: 'hdr_id') int? hdrId,
//     @JsonKey(name: 'card_id') int? cardId,
//     @JsonKey(name: 'in_qty') int? inQty,
//     @JsonKey(name: 'out_qty') int? outQty,
//     @JsonKey(name: 'year_id') int? yearID,
//     //
//     @JsonKey(name: 'is_aproved') bool? isApproved,
//     @JsonKey(name: 'is_free') bool? isFree,
//     @JsonKey(name: 'is_rejected') bool? isRejected,
//     @JsonKey(name: 'is_valid') bool? isValid,
//     @JsonKey(name: 'is_out_dated') bool? isOutDated,
//     //
//     @JsonKey(name: 'created_at') DateTime? createdAt,
//     @JsonKey(name: 'created_by') int? createdBy,
//     @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt,
//     @JsonKey(name: 'last_updated_by') int? lastUpdatedBy,
//     @JsonKey(name: 'update_counts') int? updatedCount,
//   }) = _SlsOrdDtlRes;

//   factory SlsOrdDtlRes.fromJson(Map<String, dynamic> json) =>
//       _$SlsOrdDtlResFromJson(json);
// }
