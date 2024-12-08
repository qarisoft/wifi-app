import 'package:app/ui/providers/index.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FormButton extends ConsumerWidget {
  final Function()? onTap;

  const FormButton({super.key, required this.onTap, required this.text});

  final String text;

  @override
  Widget build(BuildContext context, ref) {
    final loading = ref.watch(appUiProvider.select((s) => s.loading));
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: loading ? null : onTap,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(text),
          )),
    );
    // return GestureDetector(
    //   onTap: onTap,
    //   child: Container(
    //     padding: const EdgeInsets.all(25),
    //     margin: const EdgeInsets.symmetric(horizontal: 25),
    //     // decoration: BoxDecoration(
    //     //   color: Theme.of(context).colorScheme.secondary,
    //     //   // color: Colors.white,
    //     //
    //     //   borderRadius: BorderRadius.circular(8),
    //     // ),
    //     child: Center(
    //       child: Text(
    //         text,
    //         style: const TextStyle(
    //           // color: Colors.white,
    //           fontWeight: FontWeight.bold,
    //           fontSize: 16,
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
