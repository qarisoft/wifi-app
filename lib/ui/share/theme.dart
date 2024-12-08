import 'package:flutter/material.dart';

// class A{
//
// }
extension Ae<T> on T {
  get wp => WidgetStatePropertyAll<T>(this);
}

class AppTheme {
  const AppTheme();

  static const g50 = Color(0xFFFAFAFA);
  static const g100 = Color(0xFFF5F5F5);
  static const g200 = Color(0xFFEEEEEE);
  static const g300 = Color(0xFFE0E0E0);
  static const g3002 = Color(0xFFD6D6D6);
  static const g400 = Color(0xFFBDBDBD);
  static const g600 = Color(0xFF757575);
  static const g700 = Color(0xFF616161);
  static const g800 = Color(0xFF424242);
  static const g8002 = Color(0xFF303030);
  static const g900 = Color(0xFF212121);

  static const blu100 = Color(0xFF82B1FF);
  static const blu400 = Color(0xFF2979FF);
  static const blu700 = Color(0xFF2962FF);

  static const Color primary = g400;
  static const Color surface = g300;
  static const Color invPrimary = g200;

  //
  static const Color primaryD = g300;
  static const Color surfaceD = g8002;
  static Color invPrimaryD = g700;
  final useMaterial3 = true;

  static ThemeData get l => ThemeData(
      // dialogTheme: DialogTheme(pa),
      // useMaterial3: false,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppTheme.g200,
      appBarTheme: const AppBarTheme(),
      colorScheme: const ColorScheme.light(
        brightness: Brightness.light,
        surface: AppTheme.g300,
        primary: AppTheme.g8002,
        // inversePrimary: AppTheme.g700,
        secondary: AppTheme.g100,
        inverseSurface: AppTheme.g8002,
      ),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(overlayColor: Colors.transparent.wp)),
      switchTheme: SwitchThemeData(
        trackColor: g200.wp,
        thumbColor: g800.wp,
        trackOutlineColor: Colors.transparent.wp,
        overlayColor: Colors.transparent.wp,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: g8002.wp,
          foregroundColor: g200.wp,
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ),
      hintColor: g400,
      iconTheme: const IconThemeData(color: g8002),
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: g300,
        border: OutlineInputBorder(borderSide: BorderSide.none),

        // hintStyle: TextStyle()
      ),
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(shape: CircleBorder()),
      dialogBackgroundColor: g200);

  static ThemeData get d => ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: g8002,
        primaryColor: Colors.red,
        hintColor: g600,
        colorScheme: const ColorScheme.dark(
          surface: g900,
          primary: g400,
          inversePrimary: g8002,
          secondary: g900,
          inverseSurface: g400,
        ),
        // appBarTheme: ,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            // maximumSize: Size.infinite.wp,

            backgroundColor: g400.wp,
            foregroundColor: g8002.wp,
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
        switchTheme: SwitchThemeData(
          trackColor: invPrimaryD.wp,
          thumbColor: primaryD.wp,
          trackOutlineColor: Colors.transparent.wp,
          overlayColor: Colors.transparent.wp,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: g800,
          border: OutlineInputBorder(borderSide: BorderSide.none),
        ),
        dialogBackgroundColor: g8002,
      );

  ThemeData get dark => theme.copyWith(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: g900,
        colorScheme: ColorScheme.dark(
            brightness: Brightness.dark,
            primary: primaryD,
            surface: surfaceD,
            inversePrimary: invPrimaryD,
            secondary: g800),
        switchTheme: SwitchThemeData(
          trackColor: invPrimaryD.wp,
          thumbColor: primaryD.wp,
          trackOutlineColor: Colors.transparent.wp,
          overlayColor: Colors.transparent.wp,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: primaryD.wp,
            foregroundColor: invPrimaryD.wp,
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
        // primaryColor:
      );

  // CupertinoTheme()
  ThemeData get theme => ThemeData(
        useMaterial3: useMaterial3,
        brightness: Brightness.light,
        switchTheme: SwitchThemeData(
          trackColor: g100.wp,
          thumbColor: primary.wp,
          trackOutlineColor: g100.wp,
          overlayColor: Colors.transparent.wp,
        ),
        scaffoldBackgroundColor: g200,
        // primaryColor: g900,
        colorScheme: const ColorScheme.light(
          surface: surface,
          primary: primary,
          secondary: g400,
          inversePrimary: invPrimary,
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: primary.wp,
            foregroundColor: invPrimary.wp,
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
      );
}
