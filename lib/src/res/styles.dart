import 'package:flutter/material.dart';

class AppStyles {
  static const BorderRadius topCurve = BorderRadius.only(
    topLeft: Radius.circular(30),
    topRight: Radius.circular(30),
  );

  static const TextStyle appTitleStyle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle style16 = TextStyle(
    fontSize: 16,
    color: Colors.blueGrey,
    fontWeight: FontWeight.w600,
  );
}
