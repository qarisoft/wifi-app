// import 'package:flutter/foundation.dart' show immutable;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'charge.freezed.dart';

@freezed
class Charge with _$Charge {
  const factory Charge({
    required int id,
    @Default(0) int inQnt,
    @Default(0) int outQnt,
    required int productId,
  }) = _Charge;
}
