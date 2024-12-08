import 'package:app/data/service/db/data_sql.dart';
import 'package:flutter/foundation.dart';

const sqlString = '''
CREATE TABLE users (
	id					        INTEGER NOT NULL,
	username				    TEXT UNIQUE NOT NULL,
	name	    			    TEXT,
	login_pwd				    TEXT NOT NULL,
	is_active				    INTEGER NOT NULL DEFAULT 0,
	last_logged_in_date			TIMESTAMP ,
	profile_img			    	TEXT,
	description			    	TEXT,
	created_at	    	  		TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(id AUTOINCREMENT)
);
--
CREATE TABLE logins(
  id          INTEGER,
  user_id     INTEGER NOT NULL,
  created_at	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY(id AUTOINCREMENT)
);
--
CREATE TRIGGER user_loged_in
    AFTER INSERT on logins
    BEGIN
    UPDATE users
    SET last_logged_in_date = datetime('now')
        WHERE id=new.user_id;
END;
--
CREATE TABLE years (
	id	        	    INTEGER NOT NULL,
	start_date		    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	end_date	    	  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	is_current_year	  INTEGER NOT NULL DEFAULT 0,
	opened_by	    	  INTEGER,
	opened_at	    	  TIMESTAMP,
	open_description	TEXT NOT NULL DEFAULT "",
	is_active	        INTEGER NOT NULL DEFAULT 0,
	PRIMARY KEY(id AUTOINCREMENT)
);
--
CREATE TRIGGER year_opened_update
    AFTER UPDATE on years
    WHEN new.is_current_year=1 and new.is_active=1 and old.is_current_year
    BEGIN
    UPDATE years
    SET is_current_year=0
    	WHERE id!=new.id AND is_active=1;
END;
--
CREATE TRIGGER year_opened_create
    AFTER INSERT on years
    WHEN new.is_current_year=1 and new.is_active=1
    BEGIN
    UPDATE years
    SET is_current_year=0
    	WHERE id!=new.id AND is_active=1;
END;
CREATE TRIGGER year_opened_create2
    AFTER INSERT on years

    BEGIN
    UPDATE years
    SET opened_by=(SELECT u.user_id FROM logins u order by u.id LIMIT 1)
    	WHERE id=new.id;
END;
--
CREATE TABLE cards (
  id				INTEGER,
  name			    TEXT,
  speed			    INTEGER DEFAULT 0,
  price			    REAL NOT NULL,
  band_width		INTEGER DEFAULT 0,
  code			    TEXT,
  is_active			INTEGER NOT NULL DEFAULT 0,
  is_free			INTEGER NOT NULL DEFAULT 0,
  created_at	    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  created_by	    INTEGER DEFAULT 0,
  last_updated_at	TIMESTAMP,
  last_updated_by	INTEGER DEFAULT 0,
  update_counts	  	INTEGER DEFAULT 0,
  PRIMARY KEY(id AUTOINCREMENT)
);
--
CREATE TRIGGER cards_created
	AFTER INSERT on cards
	BEGIN
  	UPDATE cards
  	SET created_by = (SELECT u.user_id FROM logins u order by u.id LIMIT 1)
  	WHERE cards.id=new.id;
END;
--
CREATE TRIGGER cards_updated
    AFTER UPDATE on cards
    WHEN old.created_by!=0
    BEGIN
    UPDATE cards
    SET last_updated_at = datetime('now'),
      last_updated_by = (SELECT u.user_id FROM logins u order by u.id LIMIT 1),
      update_counts = update_counts + 1
      WHERE id=new.id;
END;
--
CREATE TABLE operational_cards (
	rec_ser	        INTEGER NOT NULL,
	card_id	        INTEGER NOT NULL,
	year_id	        INTEGER NOT NULL,
	in_qty	        INTEGER NOT NULL DEFAULT 0,
	out_qty	        INTEGER NOT NULL DEFAULT 0,
	card_price	    REAL NOT NULL,
	is_free	        INTEGER NOT NULL,
	is_valid        INTEGER NOT NULL DEFAULT 0,
	is_rejected     INTEGER NOT NULL DEFAULT 0,
	is_out_dated	INTEGER NOT NULL DEFAULT 0,
	is_generated    INTEGER DEFAULT 0,
	description	    TEXT NOT NULL DEFAULT 'none',
	source_id	    INTEGER NOT NULL,
  	source_table    TEXT NOT NULL DEFAULT 'no table',
	created_at	    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

	created_by	    INTEGER NOT NULL DEFAULT 0,

	PRIMARY KEY(rec_ser AUTOINCREMENT)
);
--
CREATE TABLE generated_card_hdrs (
	id				  INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	description		  TEXT DEFAULT "gerate cards",
	is_active		  INTEGER NOT NULL DEFAULT 0,
	is_aproved		  INTEGER NOT NULL DEFAULT 0,
	year_id			  INTEGER NOT NULL DEFAULT 0,
	generated_date	  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	created_at	      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	last_updated_at	  TIMESTAMP,
	created_by	      INTEGER NOT NULL DEFAULT 0,
	last_updated_by	  INTEGER NOT NULL DEFAULT 0,
	update_counts	  INTEGER NOT NULL DEFAULT 0
);
--
CREATE TRIGGER generated_card_hdrs_created
	AFTER INSERT on generated_card_hdrs
	BEGIN
	UPDATE generated_card_hdrs
	SET created_by=(SELECT u.user_id FROM logins u order by u.id LIMIT 1),
		year_id=(SELECT id FROM years WHERE is_current_year=1 AND is_active=1 LIMIT 1)
	WHERE id=new.id;
END;
--
CREATE TRIGGER generated_card_hdrs_updated
    AFTER UPDATE on generated_card_hdrs
    WHEN old.created_by!=0 AND old.is_aproved=0
    BEGIN
    UPDATE generated_card_hdrs
        SET last_updated_at = datetime('now'),
            update_counts   = old.update_counts+1,
            last_updated_by = (SELECT u.user_id FROM logins u order by u.id LIMIT 1)
    	WHERE id=new.id AND is_aproved=0;
END;
--
CREATE TRIGGER generated_card_hdr_check
  BEFORE update on generated_card_hdrs
  BEGIN
  SELECT
    CASE
      WHEN old.is_aproved=1  THEN
        RAISE (ABORT,'you can not update this record is approved')
        END;
END;
--
CREATE TABLE generated_card_dtls (
	rec_ser	            INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	hdr_id	            INTEGER NOT NULL,
	card_id	            INTEGER NOT NULL,
	card_price	        REAL NOT NULL DEFAULT 0,
	quantity	        INTEGER NOT NULL DEFAULT 1,
	is_active	        INTEGER NOT NULL DEFAULT 0,
	description	        TEXT NOT NULL DEFAULT 'Was GENERATED',

	is_aproved			INTEGER NOT NULL DEFAULT 0,
	is_free			    INTEGER NOT NULL DEFAULT 0,
  	year_id				INTEGER NOT NULL DEFAULT 0,
	created_at	        TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	last_updated_at	    TIMESTAMP,
	created_by	        INTEGER NOT NULL DEFAULT 0,
	last_updated_by	    INTEGER NOT NULL DEFAULT 0,
	update_counts		INTEGER NOT NULL DEFAULT 0,
	FOREIGN KEY (hdr_id) REFERENCES generated_card_hdrs(id)
);
--
CREATE TRIGGER generated_card_dtls_created
	AFTER INSERT on generated_card_dtls
	BEGIN
	UPDATE generated_card_dtls
	SET created_by=(SELECT u.user_id FROM logins u order by u.id LIMIT 1),
    year_id=(SELECT id from years WHERE is_current_year=1 AND is_active=1 LIMIT 1),
    card_price=(SELECT c.price from cards c where c.id=new.card_id)
	WHERE rec_ser=new.rec_ser;
END;
--
CREATE TRIGGER generated_card_dtls_updated
	AFTER UPDATE on generated_card_dtls
	WHEN old.created_by!=0 AND old.is_aproved=0
	BEGIN
	UPDATE generated_card_dtls
	SET last_updated_at = datetime('now'),
		  update_counts   = old.update_counts+1,
		  last_updated_by = (SELECT u.user_id FROM logins u order by u.id LIMIT 1)
	WHERE rec_ser=new.rec_ser AND is_aproved=0;
END;
--
CREATE TRIGGER generated_card_dtls_check
  BEFORE update on generated_card_dtls
  BEGIN
  SELECT
    CASE
      WHEN old.is_aproved=1  THEN
        RAISE (ABORT,'you can not update this record is approved')
        END;
END;
--
CREATE TABLE generated_card_hdrs_approves(
    id          INTEGER,
    hdr_id      INTEGER NOT NULL ,
    created_at  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    created_by	INTEGER  DEFAULT 0,
    PRIMARY KEY(id AUTOINCREMENT)
);
--
CREATE TRIGGER generated_card_hdrs_approves_created
	AFTER INSERT on generated_card_hdrs_approves
	BEGIN
	INSERT INTO operational_cards (card_id,year_id,in_qty,card_price,is_free,is_valid,is_generated,source_table,source_id,description,created_by)
    SELECT	g.card_id,
            (SELECT id from years WHERE is_current_year=1 AND is_active=1 LIMIT 1) as year_id,
            g.quantity as in_qty,
            g.card_price,
            g.is_free,
            1,
            1,
            'generated_card_dtls' as source_table,
            g.rec_ser as source_id,
            g.description as description,
			(SELECT u.user_id FROM logins u order by u.id LIMIT 1) as created_by
        FROM generated_card_dtls g
            WHERE hdr_id=new.hdr_id;
END;
--
CREATE TRIGGER generated_card_hdrs_approves_created_update_self
    AFTER INSERT on generated_card_hdrs_approves
    BEGIN
    UPDATE generated_card_hdrs_approves
    SET created_by = (SELECT u.user_id FROM logins u order by u.id LIMIT 1)
    	WHERE hdr_id=new.hdr_id;
END;
--
CREATE TRIGGER generated_card_hdrs_approves_created2
    AFTER INSERT on generated_card_hdrs_approves
    BEGIN
    UPDATE generated_card_dtls
    SET is_aproved = 1
    	WHERE hdr_id=new.hdr_id AND is_aproved=0;
END;
--
CREATE TRIGGER generated_card_hdrs_approves_created3
    AFTER INSERT on generated_card_hdrs_approves
    BEGIN
    UPDATE generated_card_hdrs
    SET is_aproved = 1
    	WHERE id=new.hdr_id;
END;
--
CREATE TABLE point_of_sales (
	id	              INTEGER,
	name	          TEXT NOT NULL,
	phone	          TEXT,
	location	      TEXT,
	description	      TEXT,
	periorty	      INTEGER DEFAULT 0,
	is_active	      INTEGER DEFAULT 0,
	created_at	      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	created_by	      INTEGER DEFAULT 0,
	last_updated_at	  TIMESTAMP,
	last_updated_by	  INTEGER DEFAULT 0,
	update_counts	  INTEGER DEFAULT 0,
	PRIMARY KEY(id AUTOINCREMENT)
);
--
CREATE TRIGGER point_of_sales_created
    AFTER INSERT on point_of_sales
    BEGIN
    UPDATE point_of_sales
    SET created_by = (SELECT u.user_id FROM logins u order by u.id LIMIT 1)
    	WHERE id=new.id;
END;
--
CREATE TRIGGER point_of_sales_updated
	AFTER UPDATE on point_of_sales
	WHEN old.created_by!=0
	BEGIN
	UPDATE point_of_sales
	SET last_updated_at = datetime('now'),
	last_updated_by = (SELECT u.user_id FROM logins u order by u.id LIMIT 1),
	update_counts = old.update_counts + 1
	WHERE id=new.id;
END;
--
CREATE TABLE sales_order_hdrs (
	id	              INTEGER,
  is_aproved	      INTEGER DEFAULT 0,
	point_id	      INTEGER DEFAULT 0,
	statement	      TEXT DEFAULT "order",
	year_id	          INTEGER NOT NULL DEFAULT 0,
	is_active	      INTEGER NOT NULL DEFAULT 0,
	is_rejected	    INTEGER DEFAULT 0,
	is_valid	    INTEGER DEFAULT 0,
	is_out_dated	INTEGER DEFAULT 0,
	created_at	      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	last_updated_at	  TIMESTAMP,
	created_by	      INTEGER NOT NULL DEFAULT 0,
	last_updated_by	  INTEGER DEFAULT 0,
	update_counts	  INTEGER NOT NULL DEFAULT 0,
	PRIMARY KEY(id AUTOINCREMENT)
);
--
CREATE TRIGGER sales_order_hdrs_created
    AFTER INSERT on sales_order_hdrs
    BEGIN
    UPDATE sales_order_hdrs
    SET year_id= (SELECT id from years WHERE is_current_year=1 AND is_active=1 LIMIT 1) ,
        created_by=(SELECT u.user_id FROM logins u order by u.id LIMIT 1)
    WHERE id=new.id;
END;
--
CREATE TRIGGER sales_order_hdrs_updated
    AFTER UPDATE on sales_order_hdrs
    WHEN old.created_by!=0  AND old.is_aproved=0
    BEGIN
    UPDATE sales_order_hdrs
    SET last_updated_at=datetime('now'),
        last_updated_by=(SELECT u.user_id FROM logins u order by u.id LIMIT 1),
        update_counts=old.update_counts+1
    WHERE id=new.id;
END;
--
 CREATE TABLE sales_order_dtls (
	rec_ser	        INTEGER,
	is_aproved	    INTEGER DEFAULT 0,
	description	    TEXT DEFAULT 'order',
	hdr_id	        INTEGER NOT NULL,
	card_id	        INTEGER NOT NULL,
	card_price      INTEGER NOT NULL DEFAULT 0,
	in_qty	        INTEGER DEFAULT 0,
	out_qty	        INTEGER DEFAULT 0,
	is_free	        INTEGER DEFAULT 0,

	is_rejected	    INTEGER DEFAULT 0,
	is_valid	    INTEGER DEFAULT 0,
	is_out_dated	INTEGER DEFAULT 0,
	year_id	        INTEGER NOT NULL DEFAULT 0,
	is_active	    INTEGER DEFAULT 0,
    created_at	    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	last_updated_at	TIMESTAMP,
	created_by	    INTEGER DEFAULT 0,
	last_updated_by	INTEGER DEFAULT 0,
	update_counts	INTEGER DEFAULT 0,
	PRIMARY KEY(rec_ser AUTOINCREMENT)
);
--
CREATE TRIGGER sales_order_dtls_created_check
    BEFORE INSERT on sales_order_dtls
    BEGIN
    SELECT
        CASE
            WHEN new.in_qty!=0 AND new.out_qty!=0 THEN
					RAISE (ABORT,'in_qty and out_qty can not both be positive')
                END;
END;
--
CREATE TRIGGER sales_order_dtls_created
    AFTER INSERT on sales_order_dtls
    BEGIN
    UPDATE sales_order_dtls
    SET year_id=(SELECT id from years WHERE is_current_year=1 AND is_active=1 LIMIT 1),
      created_by=(SELECT u.user_id FROM logins u order by u.id LIMIT 1),
		  card_price=(SELECT c.price from cards c where c.id=new.card_id),
      is_free=(SELECT c.is_free from cards c where c.id=new.card_id)
    WHERE rec_ser=new.rec_ser;
END;
--
CREATE TRIGGER sales_order_dtls_updated
    AFTER UPDATE on sales_order_dtls
    WHEN old.created_by!=0  AND old.is_aproved=0
    BEGIN
    UPDATE sales_order_dtls
    SET last_updated_at=datetime('now'),
        last_updated_by=(SELECT u.user_id FROM logins u order by u.id LIMIT 1),
        update_counts=old.update_counts+1
    WHERE rec_ser=new.rec_ser;
END;
--
CREATE TABLE sales_order_hdrs_approves(
    id          INTEGER,
    hdr_id      INTEGER NOT NULL ,
    created_at  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    created_by	INTEGER  DEFAULT 0,
    PRIMARY KEY(id AUTOINCREMENT)
);
--
CREATE TRIGGER sales_order_hdrs_approves_created
	AFTER INSERT on sales_order_hdrs_approves
	BEGIN
	INSERT INTO operational_cards (card_id,year_id,out_qty,in_qty,card_price,is_free,is_rejected,is_valid,is_out_dated,source_table,source_id,description,created_by)
	SELECT	s.card_id,
			(SELECT id from years WHERE is_current_year=1 AND is_active=1 LIMIT 1) as year_id,
			s.out_qty,
			s.in_qty,
			s.card_price,
			s.is_free,
			s.is_rejected,
			s.is_valid,
			s.is_out_dated,
			'sales_order_dtls' as source_table,
			s.rec_ser as source_id,
			s.description  as description,
			(SELECT u.user_id FROM logins u order by u.id LIMIT 1) as created_by
	FROM sales_order_dtls s
	WHERE s.hdr_id=new.hdr_id;
END;
--
CREATE TRIGGER sales_order_hdrs_approves_created_update_self
    AFTER INSERT on sales_order_hdrs_approves
    BEGIN
    UPDATE sales_order_hdrs_approves
    SET created_by = (SELECT u.user_id FROM logins u order by u.id LIMIT 1)
    	WHERE hdr_id=new.hdr_id;
END;
--
CREATE TRIGGER sales_order_hdrs_approves_created_update_dtls
    AFTER INSERT on sales_order_hdrs_approves
    BEGIN
    UPDATE sales_order_dtls
    SET is_aproved = 1
    	WHERE hdr_id=new.hdr_id AND is_aproved=0;
END;
--
CREATE TRIGGER sales_order_hdrs_approves_created_update_hdrs
    AFTER INSERT on sales_order_hdrs_approves
    BEGIN
    UPDATE sales_order_hdrs
    SET is_aproved = 1
    	WHERE id=new.hdr_id AND is_aproved=0;
END;
--
CREATE VIEW cards_stats
  AS
  SELECT 
	card_id,
	c.name,
	sum(in_qty * is_generated) as generate,
	sum(out_qty) as out,
	sum(in_qty * is_rejected ) as 'RETURNED',
	sum(in_qty * is_out_dated) as 'OUT DATED',
	sum(in_qty * is_rejected * is_valid ) as 'valid RETURNED+',
	sum(in_qty * is_rejected ) - sum(in_qty * is_rejected * is_valid ) as 'R Broken',
	
	sum(in_qty * is_generated)  
		- sum(out_qty) 
		+ sum(in_qty * is_rejected * is_valid ) 
		- sum(in_qty * is_out_dated)  as 'available'	
	FROM operational_cards
	JOIN cards c on card_id=c.id
	GROUP by card_id;
''';

sql() {
  // if (kDebugMode) {
    return '$sqlString -- $sqlData';
  // }
  // return sqlString;
}

List<String> sqlTables() => sql().split('--');

// List<String> sqlTables =
