import 'package:app/core/error/failure.dart';
import 'package:app/domain/models/v2/card/card.dart';
import 'package:flutter_test/flutter_test.dart';

check<T>(T data) {
  if (T is CardData) {
    return 'T is CardData';
  }
  if (data is CardData) {
    return 'data is CardData';
  }
}

t() {
  // const c = CardData(price: 100, speed: 100, name: 'name', code: 'code');

  const er = AuthFailure('ss');
  final auther = AppFailure.login('ss');
  // if(auther is AuthFailure){
  //
  // }
  print('$er ---- $auther');
  print('auth is ${auther is AuthFailure}');

  // print(check(c));
}

void main() {
  test('hi', t);
}
