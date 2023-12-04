import 'package:flutter/material.dart';

class ThemeDatas {
  static getThemePackage() {
    return ThemeData(
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.blueGrey,
        fontFamily: 'Roboto Bold',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(
                  fontFamily: 'Roboto Black', fontSize: 20, color: Colors.red),
              backgroundColor: Colors.amber,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
        ),
        appBarTheme: const AppBarTheme(color: Colors.teal));
  }
}
