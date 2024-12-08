import 'package:app/ui/share/theme.dart';
import 'package:flutter/material.dart';

class BooleanIcon extends StatelessWidget {
  const BooleanIcon(this.e, {super.key});

  final bool e;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.check,
      color: e ? AppTheme.blu400 : AppTheme.g600,
    );
  }
}
