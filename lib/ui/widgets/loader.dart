import 'package:flutter/cupertino.dart';
// import 'package:flutter/widgets.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: CupertinoActivityIndicator()),
      ],
    );
  }
}

class LoaderError extends StatelessWidget {
  const LoaderError({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text('Error')),
      ],
    );
  }
}
