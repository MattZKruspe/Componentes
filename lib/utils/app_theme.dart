import 'package:flutter/material.dart';
class AppTheme {

  static const Color primary = Color.fromARGB(161, 155, 39, 176);
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Color primario
    primaryColor: Colors.blue,
    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color:  primary,
      elevation: 0,
    )   
  );




}