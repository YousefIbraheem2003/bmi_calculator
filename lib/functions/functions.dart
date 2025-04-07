import 'package:flutter/material.dart';

Color buttonColor(int number) {
  Color buttonColor;
  if (number == 0) {
    buttonColor = Colors.transparent;
  } else {
    buttonColor = Colors.grey;
  }
  return buttonColor;
}
