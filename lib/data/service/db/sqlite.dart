// import 'package:sqflite_common/sqflite.dart';
// import 'package:sqflite_common/utils/utils.dart';

import 'package:app/data/service/db/tables.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

Future<void> createTables(Database db, [int? version]) async {
  for (var element in sqlTables()) {
    await db.execute(element);
  }
}

class SqlService {
  final String path;

  Future<void> close() async => (await db()).close();

  SqlService({required this.path});

  Future<Database> db() async {
    return await openDatabase(
      path,
      onCreate: createTables,
      // singleInstance: true,
      version: 2,
    );
  }

  Future<T> sql<T>(Future<T> Function(Database d) action) async {
    final d = await db();
    final T res = await action(d);
    await d.close();
    return res;
  }
}

class SqlTester extends SqlService {
  Database? database;

  SqlTester([String? p]) : super(path: p ?? inMemoryDatabasePath);

  @override
  Future<T> sql<T>(Future<T> Function(Database d) action) async {
    final d = database ?? await db();
    return await action(d);
  }
}
