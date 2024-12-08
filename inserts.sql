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
DROP VIEW if EXISTS cards_stats;







INSERT INTO users(username,login_pwd,is_active)
		VALUES ('salah','pass',1),
		('salah2','pass',1);
--
INSERT INTO logins(user_id)
		VALUES (2);
--
INSERT INTO years(is_current_year,is_active)
	VALUES
	(1,1),
	(1,1);
--
UPDATE generated_card_dtls
	SET description="updated"
	WHERE rec_ser=3;
--
INSERT INTO point_of_sales (name,is_active)
	VALUES  ('dsad',1),
			('dsadeg',1),
			('dsadsadd',1);
--
INSERT INTO cards(name,price,is_active,code)
	VALUES
		('c1',200,1,'c1code'),
		('c2',300,1,'c2c'),
		('c3',400,1,'c3c'),
		('c4',500,1,'c4c');
--
INSERT INTO generated_card_hdrs(description,is_active) VALUES ("dsadsadsadsa",1);
--
INSERT INTO generated_card_dtls(hdr_id,card_id,quantity,is_active) VALUES
	(1,1,10,1),
	(1,2,20,1),
	(1,3,30,1),
	(1,4,40,1);
--
INSERT INTO generated_card_hdrs_approves(hdr_id) VALUES (1);
--
INSERT INTO sales_order_hdrs(point_id,is_active)
	VALUES (1,1);
--
INSERT INTO sales_order_dtls (hdr_id,card_id,out_qty,is_active)
	VALUES
		(1,1,10,1),
		(1,2,10,1),
		(1,3,10,1),
		(1,4,10,1);
--
INSERT INTO sales_order_hdrs(statement,is_active)
	VALUES ('reject some cards',1);
--
INSERT INTO sales_order_dtls (card_id,in_qty,is_rejected,is_valid,description,is_active,hdr_id)
	VALUES
		(1,1,1,1,'rv',1,2),
 		(2,1,1,1,'rv',1,2),
 		(3,1,1,1,'rv',1,2),
 		(4,1,1,1,'rv',1,2);
INSERT INTO sales_order_hdrs(statement,is_active)
    VALUES ('reject some valid cards',1);
--
INSERT INTO sales_order_dtls (card_id,in_qty,is_rejected,is_valid,description,is_active,hdr_id)
	VALUES
 		(2,2,1,0,'r-iv',1,3),
 		(3,2,1,0,'r-iv',1,3),
 		(4,2,1,0,'r-iv',1,3);
--
INSERT INTO sales_order_hdrs(statement,is_active)
    VALUES ('out dated cards',1);
--
INSERT INTO sales_order_dtls (card_id,in_qty,is_out_dated,description,is_active,hdr_id)
    VALUES
		(2,1,1,'out dated',1,4),
        (3,1,1,'out dated',1,4),
        (4,1,1,'out dated',1,4);
--
INSERT INTO sales_order_hdrs_approves(hdr_id) VALUES(1);
--
INSERT INTO sales_order_hdrs_approves(hdr_id) VALUES(2);
--
INSERT INTO sales_order_hdrs_approves(hdr_id) VALUES(3);
--
INSERT INTO sales_order_hdrs_approves(hdr_id) VALUES(4);



--                           store     valid  =>  store     rej         store   outD   store
--1=> +10  -10  + 1 +v   1 = 10-10=00   +1    =>     1    (-0 0)  =>     1     -0    =>  1
--2=> +20  -10  + 2 +inv 1 = 20-10=10   +1    =>     11   (-2 0)  =>     11    -1    =>  10
--3=> +30  -10  + 3 +v   1 = 30-10=20   +1    =>     21   (-2 0)  =>     21    -1    =>  20
--4=> +40  -10  + 4 +v   1 = 40-10=30   +1    =>     31   (-2 0)  =>     31    -1    =>  30

