import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary),
    ),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: primary),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            elevation: 0, primary: primary, shape: const StadiumBorder())),
    inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        suffixIconColor: primary,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10)))),
  );

  static final ThemeData dartTheme = ThemeData.dark().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),
  );
}
