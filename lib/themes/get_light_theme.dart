import 'package:flutter/material.dart';

ThemeData getLightTheme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      textTheme: ThemeData.dark().textTheme.apply(
            bodyColor: Colors.black,
          ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 30),
      ),
      iconTheme: const IconThemeData(color: Colors.black));
}
