import 'package:flutter/material.dart';

class MyThemeData {
  static var red=Color(0xFFC91C22);
  static var blue=Color(0xFF003E90);
  static var pink=Color(0xFFED1E79);
  static var orange=Color(0xFFCF7E48);
  static var lightBlue=Color(0xFF4882CF);
  static var yellow=Color(0xFFF2D352);
  static var labelColor=Color(0xFF79828B);

  static ThemeData lightTheme=ThemeData(
    primaryColor: Colors.green,
    textTheme: TextTheme(
      headline5: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 40
      )
    )
  );

}