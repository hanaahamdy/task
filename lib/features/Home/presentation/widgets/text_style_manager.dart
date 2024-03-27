import 'package:flutter/material.dart';
import 'package:task/core/utils/colors.dart';
import 'package:task/core/utils/font_size.dart';

abstract class TextStyleManager {
  static const TextStyle title = TextStyle(
    color: ColorManager.black,
    fontSize:18,
    fontWeight: FontWeight.w500
  );
}
