import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme.g.dart';

@riverpod
class AppMode extends _$AppMode {
  @override
  ThemeMode build() {
    return ThemeMode.system;
  }

  togole() =>
      state = state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
}
