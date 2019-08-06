import 'package:flutter/material.dart';

var themeData = ThemeData(
  appBarTheme: AppBarTheme(
    brightness: Brightness.dark,
    color: Colors.indigo,
    textTheme: TextTheme(
      title: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
    ),
    elevation: 0,
    iconTheme: IconThemeData(
      color: Colors.white,
      size: 24,
    ),
  ),
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: Color.fromRGBO(240, 240, 240, 1),
  canvasColor: Colors.indigo,
  primaryColor: Colors.yellow,
  dialogTheme: DialogTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  ),
  accentColor: Color.fromRGBO(16, 69, 250, 1),
  buttonTheme: ButtonThemeData(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      textTheme: ButtonTextTheme.primary),
);
