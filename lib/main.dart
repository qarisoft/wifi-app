import 'package:app/core/app.dart';
import 'package:app/fake/index.dart';
// import 'package:app/ui/pages/home/home_page.dart';
import 'package:app/ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  App.init(
      productUseCase: productUseCase,
      customerUseCase: customerUseCase,
      orderUseCase: orderUseCase,
      orderItemUseCase: orderItemUseCase);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: UiPage(),
    );
  }
}
