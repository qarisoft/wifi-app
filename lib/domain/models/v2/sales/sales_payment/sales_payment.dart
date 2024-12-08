import 'package:app/domain/models/model.dart';
import 'package:app/domain/models/v2/user/user.dart';
import 'package:app/domain/models/v2/year/year.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_payment.freezed.dart';
part 'sales_payment.g.dart';

// CREATE TABLE payments (
// id	              INTEGER,
// in_amt	          REAL NOT NULL DEFAULT 0,
// out_amt	          REAL NOT NULL DEFAULT 0,
// hdr_id	          INTEGER NOT NULL  DEFAULT 0,
// point_id	        INTEGER NOT NULL DEFAULT 0,
// extra_info	      TEXT,
// status	          INTEGER DEFAULT 0,
// pay_date	        TIMESTAMP  DEFAULT CURRENT_TIMESTAMP,
// pay_description	  TEXT,
// year_id	          INTEGER NOT NULL DEFAULT 0,
// created_at	      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
// last_updated_at	  TIMESTAMP,
// created_by	      INTEGER DEFAULT 0,
// last_updated_by	  INTEGER DEFAULT 0,
// update_counts	    INTEGER DEFAULT 0,
// PRIMARY KEY(id AUTOINCREMENT)
// );
@freezed
class Payment with _$Payment {
  const factory Payment({
    required int id,
    @JsonKey(name: 'in_amt') required double inAmt,
    @JsonKey(name: 'out_amt') required double outAmt,
    @JsonKey(name: 'hdr_id') required int hdrId,
    @JsonKey(name: 'point_id') required int salPointId,
    @JsonKey(name: 'extra_info') required String extraInfo,
    //
    @JsonKey(name: 'is_active') required bool status,
    @JsonKey(name: 'pay_date') required DateTime payDate,
    @JsonKey(name: 'pay_description') required String payDescription,
    @JsonKey(name: 'year_id') required int yearID,
    //
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'created_by') required int createdBy,
    @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt,
    @JsonKey(name: 'last_updated_by') required int lastUpdatedBy,
    @JsonKey(name: 'update_counts') required int updatedCount,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
}

@freezed
class PaymentData extends Model with _$PaymentData {
  const factory PaymentData({
    @JsonKey(name: 'in_amt') required double inAmt,
    //
    @JsonKey(name: 'hdr_id') required int hdrId,
    @JsonKey(name: 'point_id') required int salPointId,
    @JsonKey(name: 'extra_info') required String extraInfo,
    //
    @JsonKey(name: 'is_active') bool? status,
    @JsonKey(name: 'pay_date') DateTime? payDate,
    @JsonKey(name: 'pay_description') @Default('') String payDescription,
    //
  }) = _PaymentData;

  factory PaymentData.fromJson(Map<String, dynamic> json) =>
      _$PaymentDataFromJson(json);
}

const paymentTable = '''
CREATE TABLE payments (
	id	              INTEGER,
	in_amt	          REAL NOT NULL DEFAULT 0,
	out_amt	          REAL NOT NULL DEFAULT 0,
	hdr_id	          INTEGER NOT NULL  DEFAULT 0,
	point_id	        INTEGER NOT NULL DEFAULT 0,
	extra_info	      TEXT,
	is_active	          INTEGER DEFAULT 0,
	pay_date	        TIMESTAMP  DEFAULT CURRENT_TIMESTAMP,
	pay_description	  TEXT,
	year_id	          INTEGER NOT NULL DEFAULT 0,
	created_at	      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	last_updated_at	  TIMESTAMP,
	created_by	      INTEGER DEFAULT 0,
	last_updated_by	  INTEGER DEFAULT 0,
	update_counts	    INTEGER DEFAULT 0,
	PRIMARY KEY(id AUTOINCREMENT)
);
---
CREATE TRIGGER payment_created
    AFTER INSERT on payments
    BEGIN 
    UPDATE payments
    SET year_id=$currentYearSql,
        created_by= $currentUserSql
        WHERE id=new.id;
END;
---
CREATE TRIGGER payments_updated
AFTER UPDATE on payments
WHEN old.created_by!=0
BEGIN
UPDATE payments
SET last_updated_at = datetime('now'),
	last_updated_by = $currentUserSql ,
	update_counts = old.update_counts + 1
WHERE id=new.id;
END;
''';
// @freezed
// class PaymentRes with _$PaymentRes {
//   const factory PaymentRes({
//     int? id,
//     @JsonKey(name: 'in_amt') double? inAmt,
//     @JsonKey(name: 'out_amt') double? outAmt,
//     @JsonKey(name: 'hdr_id') int? orderId,
//     @JsonKey(name: 'point_id') int? salPointId,
//     @JsonKey(name: 'extra_info') String? extraInfo,
//     //
//     int? status,
//     @JsonKey(name: 'pay_date') DateTime? payDate,
//     @JsonKey(name: 'pay_description') String? payDescription,
//     @JsonKey(name: 'year_id') int? yearID,
//     //
//     @JsonKey(name: 'created_at') DateTime? createdAt,
//     @JsonKey(name: 'created_by') int? createdBy,
//     @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt,
//     @JsonKey(name: 'last_updated_by') int? lastUpdatedBy,
//     @JsonKey(name: 'update_counts') int? updatedCount,
//   }) = _PaymentRes;

//   factory PaymentRes.fromJson(Map<String, dynamic> json) =>
//       _$PaymentResFromJson(json);
// }
