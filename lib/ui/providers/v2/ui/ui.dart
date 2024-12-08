import 'package:app/core/error/failure.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import './state.dart';

part 'ui.g.dart';

@Riverpod(keepAlive: true)
class AppUi extends _$AppUi {
  @override
  AppUiState build() {
    return const AppUiState(loading: false);
  }

  startLoading() => state = state.copyWith(loading: true, message: null);

  void stopLoading({AppFailure? er, AppMsg? ms}) =>
      state = state.copyWith(loading: false, message: ms, error: er);

  stopWithMsg(AppMsg m) => state = state.copyWith(loading: false, message: m);

  stopWithError(AppFailure e) =>
      state = state.copyWith(loading: false, error: e, message: null);

  addError(AppFailure e) => state = state.copyWith(error: e, message: null);
}
