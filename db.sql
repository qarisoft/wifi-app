CREATE TABLE "users" (
	"id"					INTEGER,
	"username"				TEXT UNIQUE NOT NULL,
	"is_current_user"		INTEGER NOT NULL DEFAULT 0,
	"name"	    			TEXT,
	"login_id"				INTEGER NOT NULL DEFAULT 0,
	"login_pwd"				INTEGER NOT NULL,
	"status"				INTEGER NOT NULL DEFAULT 0,
	"last_logged_in_date"	TIMESTAMP,
	"profile_img"			TEXT,
	"description"			TEXT,
	"created_at"	    	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TRIGGER users_updated 
AFTER UPDATE on users
BEGIN
UPDATE users
SET last_logged_in_date = datetime('now')
	WHERE id=old.id;
END;

CREATE TABLE "years" (
	"id"	        	INTEGER,
	"start_date"		INTEGER NOT NULL,
	"end_date"	    	INTEGER NOT NULL,
	"is_current_year"	INTEGER,
	"opened_by"	    	INTEGER,
	"opened_at"	    	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"open_description"	TEXT,
	"status"	        INTEGER DEFAULT 0,
	PRIMARY KEY("id" AUTOINCREMENT)
);

CREATE TRIGGER years_updated 
AFTER UPDATE on years
BEGIN
UPDATE years
SET opened_at = datetime('now')
	WHERE id=old.id;
END;
	  
CREATE TABLE "cards" (
	"id"				INTEGER,
	"name"				TEXT,
	"speed"				INTEGER,
	"price"				REAL DEFAULT 0,
	"bandwidth"			INTEGER,
	"code"				TEXT UNIQUE,
	"status"			INTEGER NOT NULL DEFAULT 0,

-- activity	
	"created_at"	    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"created_by"	    INTEGER,
	"last_updated_at"	TIMESTAMP,
	"last_updated_by"	INTEGER,
	"update_counts"		INTEGER DEFAULT 0,
	PRIMARY KEY("id" AUTOINCREMENT)
);

CREATE TRIGGER cards_updated 
AFTER UPDATE on cards
BEGIN
UPDATE cards
SET last_updated_at = datetime('now'),
	last_updated_by = (SELECT id FROM users WHERE is_current_user=1 LIMIT 1),
	update_counts = update_counts+1
	WHERE id=old.id;
END;

-- 
-- 
INSERT INTO users (username,login_pwd)
	VALUES ('salah','password');
UPDATE users 
SET is_current_user = 1
	WHERE id=1;
-- 	
INSERT INTO cards (speed,bandwidth,code,status,price,created_by)
	VALUES	(200,500, 'code1' ,1,100,1),
			(200,1000,'code2',1,200, 1),
			(300,1500,'code3',1,300, 1);



CREATE TABLE "generated_card_dtls" (
	"rec_ser"	INTEGER,
	"hdr_id"	INTEGER,
	"card_id"	INTEGER,
	"quantity"	INTEGER,
	"description"	INTEGER,

	"created_at"	    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"created_by"	    INTEGER,
	"last_updated_at"	TIMESTAMP,
	"last_updated_by"	INTEGER,
	"update_counts"		INTEGER DEFAULT 0,
	PRIMARY KEY("rec_ser" AUTOINCREMENT)
);
CREATE TABLE "generated_card_hdrs" (
	"id"	INTEGER,
	"description"	INTEGER,
	"generated_date"	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"status"	INTEGER,
	"aproved"	INTEGER,
	"year_id"	INTEGER,

	"created_at"	    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"created_by"	    INTEGER,
	"last_updated_at"	TIMESTAMP,
	"last_updated_by"	INTEGER,
	"update_counts"		INTEGER DEFAULT 0,
	PRIMARY KEY("id" AUTOINCREMENT)
);

CREATE TABLE "OperationalCards" (
	"rec-ser"	INTEGER,
	"cardId"	INTEGER NOT NULL,
	"yearId"	INTEGER NOT NULL,
	"InQt"	INTEGER NOT NULL,
	"cardPrice"	INTEGER NOT NULL,
	"isFree"	INTEGER NOT NULL DEFAULT 0,
	"is0utDated"	INTEGER NOT NULL DEFAULT 0,
	"description"	INTEGER NOT NULL,
	"gnratHdrId"	INTEGER NOT NULL,
	"createdOn"	INTEGER,
	"OutQt"	INTEGER,
	"status"	INTEGER,
	PRIMARY KEY("rec-ser" AUTOINCREMENT)
);
CREATE TABLE "PointOfSales" (
	"id"	INTEGER,
	"name"	INTEGER NOT NULL,
	"phone"	INTEGER NOT NULL,
	"location"	INTEGER,
	"description"	INTEGER,
	"periorty"	INTEGER,
	"status"	INTEGER DEFAULT 0,
	"createdOn"	INTEGER,
	"CreatedBy"	INTEGER,
	"lastUpdateOn"	INTEGER,
	"lastUpdateBy"	INTEGER,
	"updateCounts"	INTEGER DEFAULT 0,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE "SalePointPaymentDtls" (
	"id"	INTEGER,
	"salPointId"	INTEGER NOT NULL,
	"InAmt"	INTEGER NOT NULL,
	"OutAmt"	INTEGER NOT NULL,
	"yearId"	INTEGER NOT NULL,
	"payDate"	TEXT,
	"payDescription"	TEXT,
	"status"	INTEGER,
	"orderId"	INTEGER,
	"extra_info"	TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE "SalesOrderDtls" (
	"rec_ser"	INTEGER,
	"ordrId"	INTEGER NOT NULL,
	"crdId"	INTEGER NOT NULL,
	"inQt"	INTEGER NOT NULL,
	"outQt"	INTEGER NOT NULL,
	"isFree"	INTEGER NOT NULL,
	"isRejected"	INTEGER NOT NULL,
	"isOutDated"	INTEGER NOT NULL,
	"status"	INTEGER NOT NULL,
	PRIMARY KEY("rec_ser" AUTOINCREMENT)
);
CREATE TABLE "SalesOrderHdr" (
	"id"	INTEGER,
	"salPointId"	INTEGER,
	"statment"	INTEGER,
	"orderType"	INTEGER,
	"yearId"	INTEGER NOT NULL,
	"status"	INTEGER,
	"ordrDate"	INTEGER,
	"creatdOn"	INTEGER,
	PRIMARY KEY("id","salPointId","statment","orderType")
);


































-- CREATE TABLE "Users" (
-- 	"id"	INTEGER,
-- 	"username"	TEXT UNIQUE,
-- 	"name"	    TEXT,
-- 	"loginId"	INTEGER NOT NULL,
-- 	"loginPwd"	INTEGER NOT NULL,
-- 	"status"	INTEGER NOT NULL DEFAULT 0,
-- 	"lastLoggedInDate"	INTEGER,
-- 	"profileImg"	INTEGER,
-- 	"description"	INTEGER,
	
-- 	PRIMARY KEY("id")
-- );

-- DROP TABLE if EXISTS products;
-- DROP TABLE if EXISTS order_items;
-- DROP TABLE if EXISTS orders;
-- DROP TABLE if EXISTS customers;
-- DROP TABLE if EXISTS charges;
-- DROP TABLE if EXISTS years;
-- DROP VIEW if EXISTS order_items_cost;


-- CREATE TABLE years (
-- 	id	INTEGER NOT NULL UNIQUE,
-- 	name	TEXT NOT NULL UNIQUE,
-- 	is_current	INTEGER NOT NULL DEFAULT 0,
-- 	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
-- 	updated_at TIMESTAMP,
-- 	PRIMARY KEY(id AUTOINCREMENT)
-- );
-- CREATE TABLE products(
-- 	id INTEGER NOT NULL,
-- 	name TEXT NOT NULL,
-- 	price REAL default 0,
-- 	active INTEGER default 0,
-- 	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
-- 	updated_at TIMESTAMP,
-- 	PRIMARY KEY(id AUTOINCREMENT)
-- );
-- CREATE TABLE customers(
-- 	  id INTEGER  NOT NULL,
-- 	  name TEXT,
-- 	  active INTEGER default 0,
-- 	  phone TEXT,
-- 	  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
-- 	  updated_at TIMESTAMP,
-- 	  PRIMARY KEY(id AUTOINCREMENT)
-- );
-- CREATE TABLE orders (
-- 	id	INTEGER NOT NULL,
-- 	year_id		INTEGER NOT NULL,
-- 	total_price	INTEGER DEFAULT 0,
-- 	customer_id	INTEGER DEFAULT 0,
-- 	is_posted	INTEGER DEFAULT 0,
-- 	is_delivered	INTEGER DEFAULT 0,
-- 	created_at	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
-- 	updated_at	TIMESTAMP,
-- 	PRIMARY KEY(id AUTOINCREMENT),
-- 	FOREIGN KEY(customer_id) REFERENCES customers(id)
-- );
-- CREATE TABLE order_items (
-- 	id				INTEGER NOT NULL,
-- 	year_id			INTEGER NOT NULL,
-- 	quantity		INTEGER DEFAULT 1,
-- 	product_price	REAL DEFAULT 0,
-- 	cost 			REAL DEFAULT 0,
-- 	product_id		INTEGER NOT NULL,
-- 	order_id		INTEGER NOT NULL,
-- 	created_at		TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
-- 	updated_at		TIMESTAMP,
-- 	PRIMARY KEY(id AUTOINCREMENT),
-- 	FOREIGN KEY(year_id)  REFERENCES years(id),
-- 	FOREIGN KEY(order_id) REFERENCES orders(id)
-- );

-- CREATE TABLE charges (
-- 	id				INTEGER NOT NULL,
-- 	year_id			INTEGER NOT NULL,
-- 	product_id		INTEGER NOT NULL,
-- 	product_price	REAL NOT NULL DEFAULT 0,
-- 	cost			REAL NOT NULL DEFAULT 0,
-- 	in_qnt			INTEGER NOT NULL DEFAULT 0,
-- 	out_qnt			INTEGER NOT NULL DEFAULT 0,
-- 	created_at		TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
-- 	updated_at		TIMESTAMP,
-- 	PRIMARY KEY(id AUTOINCREMENT),
-- 	FOREIGN KEY(year_id) REFERENCES years(id)
-- 	FOREIGN KEY(product_id) REFERENCES products(id)
-- );



-- CREATE VIEW order_items_cost
-- 	AS 
-- 	SELECT 
-- 		oi.id as order_item_id,
-- 		oi.product_id,
-- 		oi.product_price,
-- 		oi.quantity,
-- 		p.price * oi.quantity as cost
-- 	FROM 
-- 	order_items oi
-- 	JOIN products p WHERE p.id=oi.product_id;

	
	
	
	
-- CREATE TRIGGER orders_delivered
-- 	  AFTER UPDATE on orders
-- 	  WHEN new.is_delivered=1 AND old.is_delivered=0
-- 	  BEGIN
-- 		INSERT INTO charges (year_id,out_qnt,product_id,product_price,cost)
-- 			SELECT 
-- 				(SELECT id FROM years WHERE is_current=1) as year_id,
-- 				quantity as out_qnt,
-- 				product_id,
-- 				price as product_price,
-- 				price * quantity as costt
-- 				FROM order_items 
-- 					JOIN products p on p.id=product_id 
-- 				WHERE id =new.order_id;
-- 	  END;
	  
	  
-- CREATE TRIGGER upate_order_item_product_price
-- 	AFTER INSERT on order_items
-- 	WHEN (SELECT is_delivered FROM orders WHERE orders.id=new.order_id)=0
-- 	BEGIN
-- 		UPDATE order_items 
-- 		SET product_price = (SELECT price FROM products WHERE products.id=new.product_id),
-- 			cost = (SELECT price * new.quantity as cost from products WHERE products.id=new.product_id ),
-- 			updated_at = datetime('now')
-- 		WHERE id=new.id;
-- END;





  
-- CREATE TRIGGER products_updated 
--   AFTER UPDATE on products
--   BEGIN
-- 	UPDATE products
-- 	SET updated_at = datetime('now')
-- 	  WHERE id=old.id;
--   END;


-- CREATE TRIGGER customers_updated 
-- 	  AFTER UPDATE on customers
-- 	  BEGIN
-- 		UPDATE customers
-- 		SET updated_at = datetime('now') 
-- 		  WHERE id=old.id;
--  END;

-- CREATE TRIGGER orders_updated 
-- 	  AFTER UPDATE on orders
-- 	  BEGIN
-- 		UPDATE orders
-- 		SET updated_at = datetime('now') 
-- 		  WHERE id=old.id;
-- 	  END;

	
	
	
	
	
	
	
	

-- INSERT INTO years (name,is_current)
-- 	VALUES
-- 		('2024',1);
		
-- INSERT INTO products (name,price,active)
-- 	VALUES
-- 	('product1',100,1),
-- 	('product2',200,1),
-- 	('product3',300,1);
	
	
-- INSERT INTO customers (name,active)
-- 	VALUES
-- 		('salah',1),
-- 		('salah2',1);

		
-- INSERT INTO orders (year_id,customer_id)
-- 	VALUES (1,1),
-- 			(1,2);
		
		
		
-- INSERT INTO order_items (year_id,quantity,product_id,order_id)
-- 	VALUES 
-- 	(1,3,1,1),
-- 	(1,2,2,1),
-- 	(1,6,1,1),
-- 	(1,8,1,1),
-- 	(1,4,2,1),
-- 	(1,4,1,2),
-- 	(1,3,2,2),
-- 	(1,5,1,2),
-- 	(1,7,1,2),
-- 	(1,8,2,2);