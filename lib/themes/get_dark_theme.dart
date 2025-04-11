import 'package:bmi_calculator/functions/customtheme/container_extension.dart';
import 'package:flutter/material.dart';

ThemeData getDarkTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.black,
    extensions: [
      ContainerBorderTheme(
        border: Border.all(color: Colors.white),
      ),
    ],
    textTheme: ThemeData.dark().textTheme.apply(
          bodyColor: Colors.white,
        ),
  );
}
