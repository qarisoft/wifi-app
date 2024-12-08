import 'dart:convert';

import 'package:app/domain/models/v2/user/user.dart';
import 'package:app/domain/service/storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../use_cases/types.dart';

const String userKey = 'UserKey';

class FakeShard {}

class StorageImpl extends Storage {
  static Map<String, String> data = {};
  final SharedPreferences shared;
  static bool tst = false;

  StorageImpl({required this.shared});

  MP load(String s) => jsonDecode(s);

  String save<T>(T obj) => jsonEncode(obj);

  Future<bool> _setStringTst(String k, String v) async {
    data[k] = v;
    return true;
  }

  String? _getStringTst(String k) => data[k];

  //
  String? _getString(String k) => tst ? _getStringTst(k) : shared.getString(k);

  Future<bool> _setString(String k, String v) async =>
      tst ? _setStringTst(k, v) : shared.setString(k, v);

  @override
  User? getUser() {
    final s = _getString(userKey);
    try {
      
    return s != null ? User.fromJson(load(s)) : null;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool> saveUser(User user) async {
    return await _setString(userKey, save(user));
  }
}
