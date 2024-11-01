DROP TABLE if EXISTS years;
DROP TABLE if EXISTS users;
DROP TABLE if EXISTS logins;

DROP TABLE if EXISTS cards;
DROP TABLE if EXISTS operational_cards;

DROP TABLE if EXISTS generated_card_dtls;
DROP TABLE if EXISTS generated_card_hdrs;
DROP TABLE if EXISTS generated_card_hdrs_approves;

DROP TABLE if EXISTS point_of_sales;
DROP TABLE if EXISTS payments;
DROP TABLE if EXISTS sales_order_hdrs;
DROP TABLE if EXISTS sales_order_dtls;
DROP TABLE if EXISTS sales_order_hdrs_approves;

CREATE TABLE users (
	id					    INTEGER,
	username				TEXT UNIQUE NOT NULL,
	is_current_user		    INTEGER NOT NULL DEFAULT 0,
	name	    			TEXT,
	login_id				INTEGER NOT NULL DEFAULT 0,
	login_pwd				INTEGER NOT NULL,
	status				    INTEGER NOT NULL DEFAULT 0,
	last_logged_in_date	    TIMESTAMP,
	profile_img			    TEXT,
	description			    TEXT,
	created_at	    	    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(id AUTOINCREMENT)
);
CREATE TRIGGER user_updated
    AFTER UPDATE on users
    WHEN new.is_current_user=1
    BEGIN
    UPDATE users
    SET is_current_user=0
    WHERE id!=new.id;
END;
-- 
-- 
CREATE TABLE logins(
    id          INTEGER,
    user_id     INTEGER NOT NULL,
    created_at	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id AUTOINCREMENT)
);
CREATE TRIGGER user_loged_in
    AFTER INSERT on logins
    BEGIN
    UPDATE users
    SET last_logged_in_date = datetime('now'),
        is_current_user=1
        WHERE id=new.user_id;
END;
-- 
-- 
CREATE TABLE years (
	id	        	    INTEGER NOT NULL,
	start_date		    TIMESTAMP NOT NULL,
	end_date	    	TIMESTAMP NOT NULL,
	is_current_year	    INTEGER NOT NULL DEFAULT 0,
	opened_by	    	INTEGER NOT NULL DEFAULT 0,
	opened_at	    	TIMESTAMP,
	open_description	TEXT,
	status	            INTEGER NOT NULL DEFAULT 0,
	PRIMARY KEY(id AUTOINCREMENT)
);
CREATE TRIGGER year_opened
    AFTER UPDATE on years
    WHEN new.is_current_year=1 and old.status=1
    BEGIN
    UPDATE years
    SET is_current_year = 0
    	WHERE id!=new.id AND status=1;
END;
-- 
-- 
CREATE TABLE cards (
	id				INTEGER,
	name			TEXT,
	speed			INTEGER,
	price			REAL DEFAULT 0,
	bandwidth		INTEGER,
	code			TEXT UNIQUE,
	status			INTEGER NOT NULL DEFAULT 0,
	is_free			INTEGER NOT NULL DEFAULT 0,
	created_at	    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	created_by	    INTEGER,
	last_updated_at	TIMESTAMP,
	last_updated_by	INTEGER,
	update_counts	INTEGER DEFAULT 0,
	PRIMARY KEY(id AUTOINCREMENT)
);
CREATE TRIGGER cards_updated 
    AFTER UPDATE on cards
    WHEN old.created_by!=0 
    BEGIN
    UPDATE cards
    SET last_updated_at = datetime('now'),
    	last_updated_by = (SELECT id FROM users WHERE is_current_user=1 AND status=1 LIMIT 1),
    	update_counts = update_counts + 1
    	WHERE id=new.id;
END;
-- 
-- 
CREATE TABLE operational_cards (
	rec_ser	        INTEGER NOT NULL,
	card_id	        INTEGER NOT NULL,
	year_id	        INTEGER NOT NULL DEFAULT 0,
	in_qty	        INTEGER NOT NULL DEFAULT 0,
	out_qty	        INTEGER NOT NULL DEFAULT 0,
	card_price	    REAL NOT NULL DEFAULT 0,
	is_free	        INTEGER NOT NULL DEFAULT 0,
	is_out_dated	INTEGER NOT NULL DEFAULT 0,
	description	    TEXT NOT NULL DEFAULT 'Was GENERATED',
	source_id	    INTEGER NOT NULL,
    -- ['generated_card_dtls','']
    source_table	TEXT NOT NULL,
	created_at	    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	status	        INTEGER NOT NULL DEFAULT 0,
	PRIMARY KEY(rec_ser AUTOINCREMENT)
);
-- 
-- 
CREATE TABLE generated_card_hdrs (
	id					INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	description			TEXT,
	status				INTEGER NOT NULL DEFAULT 0,
    -- 
	is_aproved			INTEGER NOT NULL DEFAULT 0,
	year_id				INTEGER NOT NULL DEFAULT 0,
    -- 
	generated_date		TIMESTAMP,
	created_at	        TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	last_updated_at	    TIMESTAMP,
	created_by	        INTEGER NOT NULL DEFAULT 0,
	last_updated_by	    INTEGER NOT NULL DEFAULT 0,
	update_counts		INTEGER NOT NULL DEFAULT 0
);
CREATE TRIGGER generated_card_hdrs_updated
    AFTER UPDATE on generated_card_hdrs
    WHEN old.created_by!=0 AND old.is_aproved=0
    BEGIN
    UPDATE generated_card_hdrs
        SET 
            last_updated_at = datetime('now'),
            update_counts   = old.update_counts+1,
            last_updated_by = (SELECT id FROM users WHERE is_current_user=1 and status=1 LIMIT 1) 
    	WHERE id=new.id AND is_aproved=0;
END;
-- 
-- 
CREATE TABLE generated_card_dtls (
	rec_ser	            INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	hdr_id	            INTEGER NOT NULL,
	card_id	            INTEGER NOT NULL,
	quantity	        INTEGER NOT NULL DEFAULT 1,
	description	        TEXT DEFAULT 'was generated',
    card_price	        REAL NOT NULL DEFAULT 0,
    -- 
	is_aproved			INTEGER NOT NULL DEFAULT 0,
	-- year_id				INTEGER NOT NULL DEFAULT 0,
    -- 
	created_at	        TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	last_updated_at	    TIMESTAMP,
	created_by	        INTEGER NOT NULL DEFAULT 0,
	last_updated_by	    INTEGER NOT NULL DEFAULT 0,
	update_counts		INTEGER NOT NULL DEFAULT 0,
	FOREIGN KEY (hdr_id) REFERENCES generated_card_hdrs(id)
);
CREATE TRIGGER generated_card_dtls_updated
    AFTER UPDATE on generated_card_dtls
    BEGIN
    UPDATE generated_card_dtls
        SET card_price=(SELECT price FROM cards c WHERE c.id=new.card_id LIMIT 1),
            last_updated_at = datetime('now'),
            update_counts   = old.update_counts+1,
            last_updated_by = (SELECT id FROM users WHERE is_current_user=1 AND status=1 LIMIT 1) 
    	WHERE rec_ser=new.rec_ser AND is_aproved=0;
END;
-- 
-- 
CREATE TABLE generated_card_hdrs_approves(
    id          INTEGER,
    hdr_id      INTEGER NOT NULL ,
    created_at  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    created_by	INTEGER  DEFAULT 0,
    PRIMARY KEY(id AUTOINCREMENT)
);
CREATE TRIGGER generated_card_hdrs_approve_created 
    AFTER INSERT on generated_card_hdrs_approves
    BEGIN
    INSERT INTO operational_cards (card_id,year_id,in_qty,card_price,is_free,source_table,source_id,description)
    		SELECT	g.card_id,
                    (SELECT id FROM years WHERE is_current_year=1 and status=1 LIMIT 1) as year_id,
                    g.quantity as in_qty,
                    g.card_price,
                    (SELECT is_free FROM cards WHERE id = card_id)as is_free,
                    'generated_card_dtls' as source_table,
                    g.rec_ser as source_id,
                    g.description as description
            FROM generated_card_dtls g 
                WHERE hdr_id=new.hdr_id;
END;
CREATE TRIGGER generated_card_hdrs_approve_created2
    AFTER INSERT on generated_card_hdrs_approves
    BEGIN		
    UPDATE generated_card_dtls
    SET is_aproved = 1
    	WHERE hdr_id=new.hdr_id;
END;
CREATE TRIGGER generated_card_hdrs_approve_created3
    AFTER INSERT on generated_card_hdrs_approves
    BEGIN		
    UPDATE generated_card_hdrs
    SET is_aproved = 1
    	WHERE id=new.hdr_id;
END;

-- 
-- 
CREATE TABLE point_of_sales (
	id	            INTEGER,
	name	        TEXT NOT NULL,
	phone	        INTEGER NOT NULL,
	location	    TEXT,
	description	    TEXT,
	periorty	    INTEGER DEFAULT 0,
	status	        INTEGER DEFAULT 0,
	created_at	    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	created_by	    INTEGER,
	last_updated_at	TIMESTAMP,
	last_updated_by	INTEGER,
	update_counts	INTEGER DEFAULT 0,
	PRIMARY KEY(id AUTOINCREMENT)
);
CREATE TRIGGER point_of_sales_created 
    AFTER INSERT on point_of_sales
    BEGIN
    UPDATE point_of_sales
    SET 
    	created_by = (SELECT id FROM users WHERE is_current_user=1 AND status=1 LIMIT 1)
    	WHERE id=new.id;
END;
CREATE TRIGGER point_of_sales_updated 
    AFTER UPDATE on point_of_sales
    BEGIN
    UPDATE point_of_sales
    SET last_updated_at = datetime('now'),
    	last_updated_by = (SELECT id FROM users WHERE is_current_user=1 AND status=1 LIMIT 1),
    	update_counts = old.update_counts + 1
    	WHERE id=new.id;
END;
-- 
-- 
CREATE TABLE payments (
	id	            INTEGER,
	in_amt	        REAL NOT NULL DEFAULT 0,
	out_amt	        REAL NOT NULL DEFAULT 0,
	order_id	    INTEGER NOT NULL,
	extra_info	    TEXT,

	status	        INTEGER DEFAULT 0,
	pay_date	    TIMESTAMP,
	pay_description	TEXT,

	year_id	        INTEGER NOT NULL DEFAULT 0,
	created_at	    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	last_updated_at	TIMESTAMP,
	created_by	    INTEGER,
	last_updated_by	INTEGER,
	update_counts	INTEGER DEFAULT 0,
	PRIMARY KEY(id AUTOINCREMENT)
);
CREATE TRIGGER payment_created
    AFTER INSERT on payments
    BEGIN 
    UPDATE payments
    SET year_id=(SELECT id from years WHERE is_current_year=1 AND status=1 LIMIT 1),
        created_by=(SELECT id from users WHERE is_current_user=1 AND status=1)
        WHERE id=new.id;
END;
-- 
-- 
CREATE TABLE sales_order_hdrs (
	id	            INTEGER,
    is_aproved	    INTEGER DEFAULT 0,
    -- 
	sales_point_id	INTEGER DEFAULT 0,
	statment	    TEXT,
-- 	order_type	    TEXT NOT NULL ,
	year_id	        INTEGER NOT NULL DEFAULT 0,
	status	        INTEGER NOT NULL DEFAULT 0,
    -- 
	created_at	    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	last_updated_at	TIMESTAMP,
	created_by	    INTEGER DEFAULT 0,
	last_updated_by	INTEGER DEFAULT 0,
	update_counts	INTEGER DEFAULT 0,
	PRIMARY KEY(id AUTOINCREMENT)
);

INSERT INTO sales_order_hdrs (sales_point_id)
	VALUES (1);
	
INSERT INTO sales_order_dtls (order_id,card_id,)
	VALUES ()

CREATE TRIGGER sales_order_hdrs_created
    AFTER INSERT on sales_order_hdrs
    BEGIN
    UPDATE sales_order_hdrs
    SET year_id=(SELECT id from years WHERE is_current_year=1 AND status=1 LIMIT 1),
        created_by=(SELECT id from users WHERE is_current_user=1 AND status=1 LIMIT 1)
    WHERE id=new.id;
END;
CREATE TRIGGER sales_order_hdrs_updated
    AFTER UPDATE on sales_order_hdrs
    WHEN old.created_by!=0 AND old.year_id!=0
    BEGIN
    UPDATE sales_order_hdrs
    SET last_updated_at=datetime('now'),
        last_updated_by=(SELECT id from users WHERE is_current_user=1 AND status=1 LIMIT 1),
        update_counts=old.update_counts+1
    WHERE id=new.id;
END;
-- 
-- 
CREATE TABLE sales_order_dtls (
	rec_ser	        INTEGER,
	is_aproved	    INTEGER DEFAULT 0,
    -- 
	order_id	    INTEGER NOT NULL,
	card_id	        INTEGER NOT NULL,

-- 	in_qty	        INTEGER DEFAULT 0,
	out_qty	        INTEGER DEFAULT 0,

	is_free	        INTEGER DEFAULT 0,
	is_rejected	    INTEGER DEFAULT 0,
	is_out_dated	INTEGER DEFAULT 0,

	status	        INTEGER DEFAULT 0,

    created_at	    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(rec_ser AUTOINCREMENT)
);
CREATE TRIGGER sales_order_dtls_created_check
    BEFORE INSERT on sales_order_dtls
    BEGIN
    SELECT
        CASE 
            WHEN new.in_qty!=0 AND new.out_qty!=0 THEN
					RAISE (ABORT,'in_qty and out_qty can not both be positive')
                END;
END;



CREATE TABLE sales_order_hdrs_approves(
    id          INTEGER,
    hdr_id      INTEGER NOT NULL ,
    created_at  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    created_by	INTEGER  DEFAULT 0,
    PRIMARY KEY(id AUTOINCREMENT)
);
CREATE TRIGGER sales_order_hdrs_updated_aprove
    AFTER INSERT on sales_order_hdrs_approves
    BEGIN
    INSERT INTO operational_cards (card_id,year_id,out_qty,card_price,is_free,source_table,source_id,description)
        SELECT	g.card_id,
                    (SELECT id FROM years WHERE is_current_year=1 and status=1 LIMIT 1) as year_id,
                    g.quantity as out_qty,
                    g.card_price,
                    (SELECT is_free FROM cards WHERE id = card_id) as is_free,
                    'sales_order_hdrs' as source_table,
                    g.rec_ser as source_id,
                    g.description as description
            FROM sales_order_dtls g
            WHERE g.hdr_id=new.hdr_id;
END;
-- 





INSERT INTO users (username,login_pwd)
	VALUES ('salah','password');
INSERT INTO logins (user_id)
    VALUES (1);
	
INSERT INTO years (start_date,end_date,status)
    VALUES  (datetime('now'),datetime('2025-10-10'),1),
            (datetime('now'),datetime('2025-10-10'),1);

UPDATE years 
SET is_current_year = 1,
	opened_by=1
	WHERE id=2;
	
INSERT INTO cards (speed,bandwidth,code,status,price,created_by)
	VALUES	(200,500, 'code1', 1,100,1),
			(200,1000,'code2', 1,200,1),
			(300,1500,'code3', 1,300,1);
UPDATE cards 
    set code='updated'
    WHERE id=1;

INSERT INTO generated_card_hdrs (status,created_by,description)
    VALUES  (1,1,'generate 20 cards');

INSERT INTO generated_card_dtls (hdr_id,card_id,quantity)
    VALUES  (1,1,10),
            (1,2,40),
            (1,2,100),
            (1,3,30),
            (1,1,80);

INSERT INTO generated_card_hdrs_approves (hdr_id,created_by)
    VALUES  (1,1);

INSERT INTO point_of_sales (name,phone,status)
    VALUES  ('sal 1','772953640',1),
            ('sal 2','772953641',1);



-- INSERT INTO operational_cards (card_id,in_qty,card_price,source_id,source_table)
--     VALUES (1,10,100,1,'salah');
