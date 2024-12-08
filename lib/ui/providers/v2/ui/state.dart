import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failure.dart';
import '../../../../domain/models/v2/user/user.dart';

// part 'state.g.dart';

part 'state.freezed.dart';

@freezed
abstract class AppMsg with _$AppMsg {
  // @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AppMsg.registered({
    @Default('User Created Successfully') String msg,
  }) = UserCreated;

  const factory AppMsg.logInSuccessfully({
    @Default('User Logged in Successfully') String msg,
  }) = LogInSuccessfully;

  const factory AppMsg.wellDone({
    @Default('Well Done !!') String msg,
  }) = WellDoneMsg;

  const factory AppMsg.msg({
    @Default('Well Done !!') String msg,
  }) = DefaultMsg;
}
//
// @freezed
// abstract class AuthState with _$AuthState {
//   const factory AuthState.yes() = Authinticated;
//
//   const factory AuthState.no() = UnAuthinticated;
// }

@freezed
abstract class AuthData with _$AuthData {
  // @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AuthData.yes({required User user}) = Authinticated;

  const factory AuthData.no({@Default(true) bool initial}) = UnAuthinticated;
}

@freezed
abstract class AppUiState with _$AppUiState {
  // @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AppUiState({
    AppFailure? error,
    required bool loading,
    AppMsg? message,
  }) = _AppUiState;

// factory AppUiState.fromJson(Map<String, dynamic> json) =>
//     _$AppUiStateFromJson(json);
}
