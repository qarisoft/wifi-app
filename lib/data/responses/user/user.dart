// import 'package:freezed_annotation/freezed_annotation.dart';
// part 'user.freezed.dart';
// part 'user.g.dart';

// // CREATE TABLE users (
// // 	id					        INTEGER,
// // 	username				    TEXT UNIQUE NOT NULL,
// // 	is_current_user		  INTEGER NOT NULL DEFAULT 0,
// // 	name	    			    TEXT,
// // 	login_id				    INTEGER NOT NULL DEFAULT 0,
// // 	login_pwd				    INTEGER NOT NULL,
// // 	status				      INTEGER NOT NULL DEFAULT 0,
// // 	last_logged_in_date	TIMESTAMP ,
// // 	profile_img			    TEXT,
// // 	description			    TEXT,
// // 	created_at	    	  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
// // 	PRIMARY KEY(id AUTOINCREMENT)
// // );
// @freezed
// class UserResponse with _$UserResponse {
//   @JsonSerializable(explicitToJson: true)
//   const factory UserResponse({
//                                           int?       id,
//     @JsonKey(name: 'username')            String?    userName,
//     @JsonKey(name: 'login_pwd')           String?    loginPwd,
//                                           String?    name,
//     @JsonKey(name: 'created_at')          DateTime?  createdAt,
//                                           int? status,
//     @JsonKey(name: 'profile_img')         String?   profileImg,
//     @JsonKey(name: 'last_logged_in_date') DateTime? lastLoginDate,
//                                           String?   description,
//   }) = _UserResponse;
//   factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);
// }
// // extension toDb()