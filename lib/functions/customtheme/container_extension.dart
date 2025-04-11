import 'package:flutter/material.dart';

class ContainerBorderTheme extends ThemeExtension<ContainerBorderTheme> {
  final Border border;

  ContainerBorderTheme({required this.border});

  @override
  ContainerBorderTheme copyWith({Border? border}) {
    return ContainerBorderTheme(border: border ?? this.border);
  }

  @override
  ContainerBorderTheme lerp(
      ThemeExtension<ContainerBorderTheme>? other, double t) {
    throw UnimplementedError();
  }
}
