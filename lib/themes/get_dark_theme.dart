import 'package:flutter/material.dart';

ThemeData getDarkTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.black,
    textTheme: ThemeData.dark().textTheme.apply(
          bodyColor: Colors.white,
        ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 30),
    ),
    iconTheme: const IconThemeData(color: Colors.white),
  );
}
