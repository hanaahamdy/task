import 'package:flutter/material.dart';
import 'package:task/core/utils/colors.dart';

ThemeData appTheme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      brightness: Brightness.dark,
    ),
    useMaterial3: true,
  );
}
