import 'package:app/domain/models/v2/year/year.dart';

const salesOrderHeaderApproveTable='''
CREATE TABLE sales_order_hdrs_approves(
    id          INTEGER,
    hdr_id      INTEGER NOT NULL ,
    created_at  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    created_by	INTEGER  DEFAULT 0,
    PRIMARY KEY(id AUTOINCREMENT)
);
---
CREATE TRIGGER sales_order_hdrs_approves_created
AFTER INSERT on sales_order_hdrs_approves
BEGIN
INSERT INTO operational_cards (card_id,year_id,out_qty,in_qty,card_price,is_free,is_rejected,is_valid,source_table,source_id,description)
	SELECT	s.card_id,
			$currentYearSql as year_id,
			s.out_qty,
			s.in_qty,
			(SELECT price FROM cards WHERE id = card_id) as card_price,
			(SELECT is_free FROM cards WHERE id = card_id) as is_free,
			s.is_rejected,
			s.is_valid,
			'sales_order_dtls' as source_table,
			s.rec_ser as source_id,
			s.description as description
	FROM sales_order_dtls s
	WHERE s.hdr_id=new.hdr_id;
END;
---
CREATE TRIGGER sales_order_hdrs_approves_created_update_dtls
    AFTER INSERT on sales_order_hdrs_approves
    BEGIN		
    UPDATE sales_order_dtls
    SET is_aproved = 1
    	WHERE hdr_id=new.hdr_id AND is_aproved=0;
END;
---
CREATE TRIGGER sales_order_hdrs_approves_created_update_hdrs
    AFTER INSERT on sales_order_hdrs_approves
    BEGIN		
    UPDATE sales_order_hdrs
    SET is_aproved = 1
    	WHERE id=new.hdr_id AND is_aproved=0;
END;
''';