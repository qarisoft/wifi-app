import 'dart:async';

import 'package:app/ui/share/ex.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef CloseLoadingScreen = bool Function();
typedef UpdateLoadingScreen = bool Function(String text);

@immutable
class LoadingScreenController {
  final CloseLoadingScreen close;
  final UpdateLoadingScreen update;

  const LoadingScreenController({
    required this.close,
    required this.update,
  });
}

class LoadingScreen {
  LoadingScreen._sharedInstance();

  static final LoadingScreen _shared = LoadingScreen._sharedInstance();

  factory LoadingScreen.instance() => _shared;

  LoadingScreenController? controller;

  void show({required BuildContext context, String text = '', Widget? w}) {
    if (controller?.update(text) ?? false) {
      return;
    } else {
      controller = showOverlay(context: context, text: text, w: w);
    }
  }

  void hide() {
    controller?.close();
    controller = null;
  }

  LoadingScreenController? showOverlay(
      {required BuildContext context, String? text, Widget? w}) {
    final textController = StreamController<String>();
    if (text != null) {
      textController.add(text);
    }
    final state = Overlay.of(context);
    // if (state == null) {
    //   return null;
    // }
    // final renderBox = context.findRenderObject() as RenderBox;
    // final size = renderBox.size;

    final overlay = OverlayEntry(
      builder: (context) {
        return Material(
          color: Colors.black.withAlpha(150),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                w ??
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: SingleChildScrollView(
                          child: CupertinoActivityIndicator(),
                        ),
                      ),
                    ),
                5.vSpace,
                StreamBuilder(
                  stream: textController.stream,
                  builder: (context, snapshot) {
                    return Text(snapshot.data ?? '');
                  },
                )
              ],
            ),
          ),
        );
      },
    );

    state.insert(overlay);

    return LoadingScreenController(
      close: () {
        textController.close();
        overlay.remove();
        return true;
      },
      update: (text) {
        textController.add(text);
        return true;
      },
    );
  }
}
