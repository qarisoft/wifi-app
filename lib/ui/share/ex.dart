// import 'package:app/ui/providers/create.dart';
import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

extension UtlScreen on num {
  Widget get vSpace => SizedBox(height: toDouble());

  Widget get hSpace => SizedBox(width: toDouble());
}

extension MediaQ on BuildContext {
  Size get mq => MediaQuery.of(this).size;
}

extension Pad on Iterable<Widget> {
  get pad => _pad;

  List<Widget> _pad([double p = 5]) => map(
        (w) => Padding(
          padding: EdgeInsets.symmetric(vertical: p),
          child: w,
        ),
      ).toList();
}

extension StringToInt on String {
  int toInt() {
    try {
      return double.parse(toString()).toInt();
    } catch (e) {
      return 0;
    }
  }

  double toDoub() {
    try {
      return double.parse(toString());
    } catch (e) {
      return 0.0;
    }
  }
}
