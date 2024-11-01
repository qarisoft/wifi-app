import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    //
    required int loginId,
    required String loginPwd,
    //
    @Default('') String name,
    //
    required DateTime lastLoginDate,
    //
    @Default(0) int status,
    //
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
