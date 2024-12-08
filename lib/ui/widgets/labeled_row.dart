import 'package:app/ui/share/ex.dart';
import 'package:flutter/material.dart';

class MRow extends StatelessWidget {
  const MRow({super.key, required this.child, required this.label});

  final Widget child;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            5.hSpace,
            Text(label),
          ],
        ),
        child
      ],
    );
  }
}
