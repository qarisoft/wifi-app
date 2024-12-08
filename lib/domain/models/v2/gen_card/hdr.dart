import 'package:app/domain/models/v2/year/year.dart';

const generatedCardHdrsApprovesTabels = '''
CREATE TABLE generated_card_hdrs_approves(
    id          INTEGER,
    hdr_id      INTEGER NOT NULL ,
    created_at  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    created_by	INTEGER  DEFAULT 0,
    PRIMARY KEY(id AUTOINCREMENT)
);
---
CREATE TRIGGER generated_card_hdrs_approve_created 
AFTER INSERT on generated_card_hdrs_approves
BEGIN
INSERT INTO operational_cards (card_id,year_id,in_qty,card_price,is_free,is_valid,source_table,source_id,description)
    SELECT	g.card_id,
                $currentYearSql as year_id,
                g.quantity as in_qty,
                g.card_price,
                g.is_free,
                1,
                'generated_card_dtls' as source_table,
                g.rec_ser as source_id,
                g.description as description
        FROM generated_card_dtls g 
            WHERE hdr_id=new.hdr_id;
END;
---
CREATE TRIGGER generated_card_hdrs_approve_created2
    AFTER INSERT on generated_card_hdrs_approves
    BEGIN		
    UPDATE generated_card_dtls
    SET is_aproved = 1
    	WHERE hdr_id=new.hdr_id AND is_aproved=0;
END;
---
CREATE TRIGGER generated_card_hdrs_approve_created3
    AFTER INSERT on generated_card_hdrs_approves
    BEGIN		
    UPDATE generated_card_hdrs
    SET is_aproved = 1
    	WHERE id=new.hdr_id;
END;
''';
