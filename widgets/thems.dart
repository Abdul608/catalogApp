import 'package:flutter/material.dart';

class MyThems {
  static ThemeData lightThemeData(BuildContext context)=>ThemeData(
  appBarTheme: AppBarTheme(
  color: Colors.white,
  elevation: 0.0,
  iconTheme: IconThemeData(color: Colors.black),
  ));

  static ThemeData darkTheme(BuildContext context)=>ThemeData(
      brightness: Brightness.dark,
      );
}
