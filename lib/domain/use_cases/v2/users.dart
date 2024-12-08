// import 'package:app/domain/use_cases/use_case.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:app/domain/models/v2/user/user.dart';
import 'package:app/domain/use_cases/use_case.dart';
// FOr
abstract class UserUseCase implements  AddDeleteEdit<User> {
  Future<User>login({required String username,required String password});
  
}