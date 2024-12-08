import 'package:sqflite_common_ffi/sqflite_ffi.dart' show Database;
export  'package:app/core/utils/types.dart';

typedef CallerType<R> = Future<R> Function(Database d);
typedef MP = Map<String, dynamic>;
typedef Query = List<Map<String, Object?>>;
