import 'package:flutter/material.dart';

extension UtlScreen on num {
  Widget get vSpace => SizedBox(height: toDouble());

  Widget get hSpace => SizedBox(width: toDouble());
}

extension MediaQ on BuildContext {
  Size get mq => MediaQuery.of(this).size;
}
