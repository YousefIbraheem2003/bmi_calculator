import 'package:bmi_calculator/functions/customtheme/container_extension.dart';
import 'package:flutter/material.dart';

ThemeData getLightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.black,
    extensions: [
      ContainerBorderTheme(
        border: Border.all(
          color: Colors.grey,
          width: 2,
        ),
      ),
    ],
    textTheme: ThemeData.dark().textTheme.apply(
          bodyColor: Colors.black,
        ),
  );
}
