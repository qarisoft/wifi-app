




















DROP TABLE if EXISTS products;
DROP TABLE if EXISTS customers;
DROP TABLE if EXISTS orders;
DROP TABLE if EXISTS orderitems;
DROP TABLE if EXISTS charges;
DROP TABLE if EXISTS years;

CREATE TABLE "years" (
	"id"	INTEGER NOT NULL UNIQUE,
	"name"	TEXT NOT NULL UNIQUE,
	"is_current"	INTEGER NOT NULL DEFAULT 0,
	"created_at" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"updated_at" TIMESTAMP,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE products(
	id INTEGER NOT NULL,
	name TEXT NOT NULL,
	price REAL default 0,
	active INTEGER default 0,
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP,
	PRIMARY KEY(id AUTOINCREMENT)
);
CREATE TABLE customers(
	  id INTEGER PRIMARY KEY  NOT NULL,
	  name TEXT,
	  active INTEGER default 0,
	  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	  updated_at TIMESTAMP
);

CREATE TABLE "orderitems" (
	"id"	INTEGER NOT NULL,
	"year_id"	INTEGER NOT NULL,
	"quantity"	INTEGER DEFAULT 1,
	"product_id"	INTEGER NOT NULL,
	"order_id"	INTEGER NOT NULL,
	"created_at"	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"updated_at"	TIMESTAMP,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("year_id") REFERENCES "years"("id")
);

CREATE TABLE "charges" (
	"id"	INTEGER NOT NULL,
	"year_id"	INTEGER NOT NULL,
	"quantity"	INTEGER NOT NULL DEFAULT 1,
	"product_id"	INTEGER NOT NULL,
	"in_qnt"	INTEGER NOT NULL DEFAULT 0,
	"out_qnt"	INTEGER NOT NULL DEFAULT 0,
	"created_at"	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"updated_at"	TIMESTAMP,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("year_id") REFERENCES "years"("id")
	CONSTRAINT "fk_charges_product_id" FOREIGN KEY("product_id") REFERENCES "products"("id")
);
CREATE TABLE "orders" (
	"id"	INTEGER NOT NULL,
	"year"	INTEGER DEFAULT 2024,
	"total_price"	INTEGER DEFAULT 0,
	"customer_id"	INTEGER DEFAULT 0,
	"is_posted"	INTEGER DEFAULT 0,
	"is_delivered"	INTEGER DEFAULT 0,
	"created_at"	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"updated_at"	TIMESTAMP,
	PRIMARY KEY("id"),
	FOREIGN KEY("customer_id") REFERENCES "customers"("id")
);

CREATE TRIGGER products_updated 
  AFTER UPDATE on products
  BEGIN
	UPDATE products
	SET updated_at = datetime('now')
	  WHERE id=old.id;
  END;
  
CREATE TRIGGER charges_updated 
  AFTER UPDATE on charges
  BEGIN
	UPDATE charges
	SET updated_at = datetime('now') 
	  WHERE id=old.id;
  END;

CREATE TRIGGER customers_updated 
	  AFTER UPDATE on customers
	  BEGIN
		UPDATE customers
		SET updated_at = datetime('now') 
		  WHERE id=old.id;
	  END;
CREATE TRIGGER orderitems_updated 
	  AFTER UPDATE on orderitems
	  BEGIN
		UPDATE orderitems
		SET updated_at = datetime('now') 
		  WHERE id=old.id;
	  END;
CREATE TRIGGER orders_updated 
	  AFTER UPDATE on orders
	  BEGIN
		UPDATE orders
		SET updated_at = datetime('now') 
		  WHERE id=old.id;
	  END;