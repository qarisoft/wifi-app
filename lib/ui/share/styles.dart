import 'package:flutter/material.dart';
import 'package:input_quantity/input_quantity.dart';

class AppStyles {
  static OutlineInputBorder transparentBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: Colors.transparent),
  );
}

const decoration = QtyDecorationProps(
  border: OutlineInputBorder(borderSide: BorderSide.none),
);
