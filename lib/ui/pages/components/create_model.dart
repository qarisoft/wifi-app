// import 'package:app/ui/providers/index.dart';
// import 'package:app/ui/widgets/with_loading.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

void createModel(context, Widget w) {
  showCupertinoModalPopup(
    context: context,
    builder: (context) {
      return w;
    },
  );
}
