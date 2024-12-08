import 'package:app/domain/models/v2/user/user.dart';

abstract class Storage {
  User? getUser();

  Future<bool> saveUser(User user);
}
