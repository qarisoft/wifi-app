import 'package:sqflite/sqflite.dart';

class SqlService {
  static Future<void> createTables(Database db, [int? version]) async {
    await db.execute('''
    CREATE TABLE products(
            id INTEGER ,
            name TEXT NOT NULL,
            price REAL default 0,
            active INTEGER default 0,
            created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
		        updated_at TIMESTAMP,
		        PRIMARY KEY("id" AUTOINCREMENT)
			      );
    ''');
    await db.execute('''
        CREATE TRIGGER products_updated 
          AFTER UPDATE on products
          BEGIN
            UPDATE products
            SET updated_at = datetime('now') 
              WHERE id=old.id;
          END;
    ''');
    await db.execute('''
    CREATE TABLE charges(
            id INTEGER mot null,
            type TEXT NOT NULL default 'in',
            quantity INTEGER default 1,
            positive INTEGER default 1,
            product_id INTEGER not null,
            created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
		        updated_at TIMESTAMP,
            constraint fk_charges_product_id foreign key (product_id) 
      		    references products ("id"),
		        constraint pk_charges PRIMARY KEY("id" AUTOINCREMENT)
		        
			      );
    ''');
    await db.execute('''
        CREATE TRIGGER charges_updated 
          AFTER UPDATE on charges
          BEGIN
            UPDATE charges
            SET updated_at = datetime('now') 
              WHERE id=old.id;
          END;
    ''');

    await db.execute('''
        CREATE TABLE customers(
                  id INTEGER PRIMARY KEY  NOT NULL,
                  name TEXT,
                  active INTEGER default 0,
                  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                  updated_at TIMESTAMP
            );
    ''');
    await db.execute('''
        CREATE TRIGGER customers_updated 
          AFTER UPDATE on customers
          BEGIN
            UPDATE customers
            SET updated_at = datetime('now') 
              WHERE id=old.id;
          END;
    ''');

    await db.execute('''
        CREATE TABLE orderitems(
                  id INTEGER PRIMARY KEY  NOT NULL,
                  quantity INTEGER default 1,
                  product_id INTEGER not null,
                  order_id INTEGER not null,
                  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                  updated_at TIMESTAMP
            );
    ''');
    await db.execute('''
        CREATE TRIGGER orderitems_updated 
          AFTER UPDATE on orderitems
          BEGIN
            UPDATE orderitems
            SET updated_at = datetime('now') 
              WHERE id=old.id;
          END;
    ''');

    await db.execute('''
        CREATE TABLE orders(
                  id INTEGER PRIMARY KEY  NOT NULL,
                  year INTEGER default 2024,
                  total_price INTEGER default 0,
                  customer_id INTEGER default 0,
                  is_posted INTEGER default 0,
                  is_delivered INTEGER default 0,
                  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                  updated_at TIMESTAMP
            );
    ''');
    await db.execute('''
        CREATE TRIGGER orders_updated 
          AFTER UPDATE on orders
          BEGIN
            UPDATE orders
            SET updated_at = datetime('now') 
              WHERE id=old.id;
          END;
    ''');
  }

  static Future<Database> _db() async {
    return await openDatabase(
      'data.db',
      onCreate: createTables,
      singleInstance: true,
      version: 1,
    );
  }
}
