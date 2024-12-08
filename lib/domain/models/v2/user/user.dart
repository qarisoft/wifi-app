import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  @JsonSerializable(explicitToJson: true)
  const factory User({
    required int id,
    @JsonKey(name: 'username') required String userName,
    @JsonKey(name: 'login_pwd') required String loginPwd,
    @Default('') String name,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'is_active') required bool status,
    @JsonKey(name: 'profile_img') String? profileImg,
    @JsonKey(name: 'last_logged_in_date') DateTime? lastLoginDate,
    String? description,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class UserData with _$UserData {
  @JsonSerializable(explicitToJson: true)
  const factory UserData({
    @JsonKey(name: 'username') required String userName,
    @JsonKey(name: 'login_pwd') required String loginPwd,
    @Default('') String name,
    @JsonKey(name: 'is_active') bool? status,
    @JsonKey(name: 'profile_img') String? profileImg,
    String? description,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

@freezed
class UserRes with _$UserRes {
  @JsonSerializable(explicitToJson: true)
  const factory UserRes({
    int? id,
    @JsonKey(name: 'username') String? userName,
    @JsonKey(name: 'login_pwd') String? loginPwd,
    String? name,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'is_active') bool? status,
    @JsonKey(name: 'profile_img') String? profileImg,
    @JsonKey(name: 'last_logged_in_date') DateTime? lastLoginDate,
    String? description,
  }) = _UserRes;

  factory UserRes.fromJson(Map<String, dynamic> json) =>
      _$UserResFromJson(json);
}

const userTable = '''
CREATE TABLE users (
	id					        INTEGER,
	username				    TEXT UNIQUE NOT NULL,
	is_current_user		  INTEGER NOT NULL DEFAULT 0,
	name	    			    TEXT,
	login_id				    INTEGER NOT NULL DEFAULT 0,
	login_pwd				    INTEGER NOT NULL,
	is_active				    INTEGER NOT NULL DEFAULT 0,
	last_logged_in_date	TIMESTAMP ,
	profile_img			    TEXT,
	description			    TEXT,
	created_at	    	  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(id AUTOINCREMENT)
);
---
CREATE TABLE logins(
    id          INTEGER,
    user_id     INTEGER NOT NULL,
    created_at	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id AUTOINCREMENT)
);
''';

const currentUserSql='(SELECT u.user_id FROM logins u order by u.id LIMIT 1)';
// '''
// CREATE TRIGGER user_updated
//     AFTER UPDATE on users
//     WHEN new.is_current_user=1
//     BEGIN
//     UPDATE users
//     SET is_current_user=0
//     WHERE id!=new.id;
// END;
// ''',
// '''
// CREATE TRIGGER user_loged_in
//     AFTER INSERT on logins
//     BEGIN
//     UPDATE users
//     SET last_logged_in_date = datetime('now'),
//         is_current_user=1
//         WHERE id=new.user_id;
// END;
// ''',
// '''
// CREATE TRIGGER user_loged_in2
//     AFTER INSERT on logins
//     BEGIN
//     UPDATE users
//     SET is_current_user=0
//         WHERE id!=new.user_id;
// END;
// ''',

