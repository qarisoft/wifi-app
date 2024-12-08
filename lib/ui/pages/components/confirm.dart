// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

confirm({
  required BuildContext context,
  required String actionText,
  required String titleText,
  Function()? action,
  Widget? w
}) {
  showDialog(
      context: context,
      builder: (c) {
        return AlertDialog.adaptive(
          title: Text(titleText),
          content: w,
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).maybePop();
                action?.call();
              },
              child: Text(actionText),
            )
          ],
        );
      });
}
